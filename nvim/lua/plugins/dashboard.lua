vim.api.nvim_create_autocmd("ColorScheme", {
  callback = function()
    local hl = vim.api.nvim_set_hl
    local purple = "#bb9af7"
    -- ASCII NVIM
    hl(0, "DashboardHeader", { fg = "#04D9FF", bold = true })

    -- Texto principal (NVIM, shortcuts, etc.)
    hl(0, "DashboardFiles", { fg = "#9ece6a" })

    -- Teclas
    hl(0, "DashboardShortCut", { fg = "#FC1723", bold = true })

    -- Iconos
    hl(0, "DashboardIcon", { fg = "#7dcfff" })

    -- Footer (Neovim vX.X.X)
    hl(0, "DashboardFooter", { fg = "#EFB810", italic = true })
  end,
})

return {
  "nvimdev/dashboard-nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  event = "VimEnter",
  config = function()
    local v = vim.version()
    local nvim_version = string.format("Neovim v%d.%d.%d", v.major, v.minor, v.patch)

    ------------------------------------------------------------------
    -- DASHBOARD
    ------------------------------------------------------------------
    require("dashboard").setup({
      theme = "hyper",
      config = {

        -- SOLO STRINGS

        header = {
          "██╗   ██╗██╗███╗   ███╗          Z",
          "██║   ██║██║████╗ ████║      Z    ",
          "██║   ██║██║██╔████╔██║   z       ",
          "╚██╗ ██╔╝██║██║╚██╔╝██║ z         ",
          " ╚████╔╝ ██║██║ ╚═╝ ██║           ",
          "  ╚═══╝  ╚═╝╚═╝     ╚═╝           ",
        },

        shortcut = {
          {
            icon = "󰈞 ",
            desc = "Open File lider",
            key = "e",
            action = "Telescope find_files",
          },
          {
            icon = "󰄉 ",
            desc = "Recent Files",
            key = "r",
            action = "Telescope oldfiles",
          },
          {
            icon = "󰒓 ",
            desc = "Edit Config lider",
            key = "c",
            action = "edit ~/.config/nvim/init.lua",
          },
          {
            icon = "󰩈 ",
            desc = "Exit",
            key = "q",
            action = "qa",
          },
        },

        footer = {
          "",
          nvim_version .. "  •  Secure Editing Environment",
        },
        footer_hl = "DashboardFooter",
      },
    })
  end,
}
