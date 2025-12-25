return {
  "xiyaowong/transparent.nvim",
  lazy = false, -- Para que cargue al inicio
  config = function()
    require("transparent").setup({
      groups = { -- Definir qué elementos hacer transparentes
        "Normal",
        "NormalNC",
        "Comment",
        "Constant",
        "Special",
        "Identifier",
        "Statement",
        "PreProc",
        "Type",
        "Underlined",
        "Todo",
        "String",
        "Function",
        "Conditional",
        "Repeat",
        "Operator",
        "Structure",
        "LineNr",
        "NonText",
        "SignColumn",
        "CursorLineNr",
        "EndOfBuffer",
      },
      extra_groups = {}, -- Puedes agregar otros grupos si los necesitas
      exclude_groups = {}, -- Excluye grupos de colores específicos
    })

    -- Activar transparencia al iniciar
    vim.cmd("TransparentEnable")
  end,
}
