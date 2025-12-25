return {
  "andymass/vim-matchup",
  event = "VeryLazy",
  config = function()
    vim.g.matchup_matchparen_offscreen = { method = "popup" } -- opcional: popup si está fuera de vista
    vim.g.matchup_matchparen_deferred = 1 -- mejora rendimiento
  end,
}
