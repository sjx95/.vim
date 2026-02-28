return {
  -- { "tpope/vim-fugitive", },
  {
    "kdheepak/lazygit.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    cmd = { "LazyGit", "LazyGitConfig", "LazyGitCurrentFile", "LazyGitFilter", "LazyGitFilterCurrentFile" },
    keys = { { "<leader>gg", "<cmd>LazyGit<cr>", desc = "LazyGit" }, },
  },
  {
    "sindrets/diffview.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {},
  },
  {
    "lewis6991/gitsigns.nvim",
    opts = {},
  },
}
