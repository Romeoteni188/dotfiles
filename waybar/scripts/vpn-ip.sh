#!/bin/bash

# Obtener lista de interfaces tun*
TUN_INTERFACES=$(ip -o link show | awk -F': ' '/tun[0-9]+/ {print $2}')

if [ -z "$TUN_INTERFACES" ]; then
  echo "VPN: Desconectado"
else
  FOUND_IP=""
  for IFACE in $TUN_INTERFACES; do
    IP=$(ip -4 addr show "$IFACE" | awk '/inet / {print $2}' | cut -d/ -f1)
    if [ -n "$IP" ]; then
      FOUND_IP=$IP
      break
    fi
  done

  if [ -n "$FOUND_IP" ]; then
    echo "VPN: $FOUND_IP"
  else
    echo "VPN: sin IP"
  fi
fi
