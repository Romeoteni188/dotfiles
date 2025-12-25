return {
  "stevearc/conform.nvim",
  init = function()
    vim.o.formatexpr = "v:lua.require'conform'.formatexpr()"
  end,
  config = function()
    require("conform").setup({
      formatters_by_ft = {
        nix = { "nixfmt" },
        javascript = { "prettier" },
        javascriptreact = { "prettier" },
        typescript = { "prettier" },
        svelte = { "prettier" },
        html = { "prettier" },
        typescriptreact = { "prettier" },
        json = { "prettier" },
        jsonc = { "prettier" },
        scss = { "prettier" },
        css = { "prettier" },
        lua = { "stylua" },
        php = { "php_cs_fixer" },
        python = { "black" },
        blade = { "blade-formatter" },
        yaml = { lsp_format = "fallback" },
        helm = { lsp_format = "fallback" },
        xml = { "prettier" },
        ["_"] = { "trim_whitespace", "trim_newlines" },
      },
      format_after_save = {
        lsp_fallback = false,
        async = true,
        timeout_ms = 1500,
      },
      formatters = {
        prettier = {
          require_cwd = true,
        },
      },
    })
  end,
}
