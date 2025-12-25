# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
# zstyle :compinstall filename '/home/romeo188/.zshrc'
# Colores para autocompletado
# zstyle ':completion:*' list-colors "no=01;32" "fi=00;33" "di=01;34" "ln=01;36" "pi=01;35" "so=01;31" "bd=01;33" "cd=01;33" "or=01;31" "mi=01;31" "ex=01;32"
autoload -Uz compinit
compinit
# End of lines added by compinstall

#agente sshgit
eval "$(starship init zsh)"
#se quito el -q para ver el estado de clave ssh
eval "$(keychain -q  --eval --agents ssh ~/.ssh/id_ed25519)"
#herramienta  para los colores letra en la terminal

alias ls="eza -l --icons --color=auto"

#usar bat en ves cat
alias cat='bat'


# Plugins de Zsh

# Syntax Highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Autosuggestions
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
# Color gris para autosuggestions
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#aaaaaa'

#neofech y color lolcat

#para z zoxide
eval "$(direnv hook zsh)"
eval "$(zoxide init zsh)"
#clima
alias clima="curl wttr.in/Coban"
#para ls
# alias ls="exa -l"
#para nvim
alias vi='nvim'
alias vim='nvim'
#lazygit
alias lg='lazygit'
#lazydocker
alias ld='lazydocker'
#para exportar la configuracion de kube
export KUBECONFIG=/etc/rancher/k3s/k3s.yaml

# pnpm
export PNPM_HOME="/home/romeo188/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
# para vps
alias vps="ssh -p 2222 -i ~/.ssh/id_ed25519 debian@148.113.203.34"
#para imagenes con kitty
alias icat="kitty +kitten icat"
