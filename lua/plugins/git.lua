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
      {
        "[c",
        function()
          if vim.wo.diff then
            vim.cmd.normal({ "[c", bang = true })
          else
            require("gitsigns").nav_hunk("prev")
          end
        end,
        desc = "Previous hunk",
      },
      {
        "]c",
        function()
          if vim.wo.diff then
            vim.cmd.normal({ "]c", bang = true })
          else
            require("gitsigns").nav_hunk("next")
          end
        end,
        desc = "Next hunk",
      },
      { "<leader>gb", "<cmd>Gitsigns blame<cr>",      desc = "blame" },
      { "<leader>gs", ":Gitsigns stage_hunk<cr>", mode = { "n", "x" }, desc = "Stage hunk or selected lines" },
    },
  },
}
