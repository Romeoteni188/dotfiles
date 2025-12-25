local M = {
  "neovim/nvim-lspconfig",
  config = function()
    local configs = require("utils.lsp-settings").lsp_configs
    local helper = require("utils.lsp-helper")

    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities = require("blink.cmp").get_lsp_capabilities(capabilities)

    for name, conf in pairs(configs) do
      local opts = {
        on_init = helper.on_init,
        on_attach = helper.on_attach,
        capabilities = capabilities,
      }

      opts = vim.tbl_deep_extend("force", conf, opts)

      -- 1️⃣Registrar config
      vim.lsp.config(name, opts)

      --  HABILITAR el servidor
      vim.lsp.enable(name)
    end
  end,
}

return M
