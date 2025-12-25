return {
  "3rd/image.nvim",
  event = "VeryLazy",
  config = function()
    require("image").setup({
      backend = "kitty", -- Ghostty usa el protocolo de Kitty
      integrations = {
        markdown = { enabled = true },
        neorg = { enabled = true },
      },
      max_width = 100,
      max_height = 50,
      window_overlap_clear_enabled = true,
    })
  end,
}
