return {
  {
    'akinsho/toggleterm.nvim',
    version = "*",
    config = true,
    keys = {
      { "<leader>tt", "<cmd>ToggleTerm<cr>", desc = "ToggleTerm" },
    },
  },
  {
    "kdheepak/lazygit.nvim",
    cmd = { "LazyGit", "LazyGitConfig", "LazyGitCurrentFile", "LazyGitFilter", "LazyGitFilterCurrentFile" },
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = {
      { "<leader>gg", "<cmd>LazyGit<cr>", desc = "LazyGit" },
    },
  },
}
