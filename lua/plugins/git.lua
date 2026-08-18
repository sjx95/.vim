--- @type LazyPluginSpec[]
return {
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
    lazy = false,
    opts = {},
    keys = {
      { "[c",         "<cmd>Gitsigns prev_hunk<cr>",  desc = "prev_hunk" },
      { "]c",         "<cmd>Gitsigns next_hunk<cr>",  desc = "next_hunk" },
      { "<leader>gb", "<cmd>Gitsigns blame<cr>",      desc = "blame" },
      { "<leader>gs", "<cmd>Gitsigns stage_hunk<cr>", desc = "stage_hunk" },
    },
  },
}
