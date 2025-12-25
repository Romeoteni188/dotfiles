return {
  { "maxmx03/solarized.nvim" },
  { "ku1ik/vim-monokai" },
  { "timmyha/henna.nvim" },
  { "nyoom-engineering/oxocarbon.nvim" },
  { "https://github.com/folke/tokyonight.nvim" },
  {
    "navarasu/onedark.nvim",
    priority = 1000,
    config = function()
      require("onedark").setup({
        style = "deep", -- Cambiá esto por: dark, darker, cool, deep, warm, warmer, light
      })
      require("onedark").load()
    end,
  },
  { "EdenEast/nightfox.nvim" },
}
