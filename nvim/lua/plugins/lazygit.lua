return {
  "kdheepak/lazygit.nvim",
  config = function()
    vim.api.nvim_set_keymap("n", "<leader>lg", ":LazyGit<CR>", { noremap = true, silent = true })
  end,
  dependencies = { "nvim-lua/plenary.nvim" },
}
