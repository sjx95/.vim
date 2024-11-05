return {
  { "williamboman/mason.nvim", opts = {}, build = ":MasonUpdate" },
  { 'stevearc/dressing.nvim',  opts = {} },
  "tpope/vim-fugitive",
  { "junegunn/fzf.vim",        dependencies = { "junegunn/fzf" } },
  { "vim-airline/vim-airline", dependencies = { "vim-airline/vim-airline-themes" } },
  {
    "nvim-neo-tree/neo-tree.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    },
    opts = {},
    lazy = false,
    keys = {
      { "nt", "<CMD>Neotree toggle=true<CR>", desc = ":Neotree toggle=true" },
      { "nf", "<CMD>Neotree reveal=true<CR>", desc = ":Neotree reveal=true" },
    },
  },

  {
    "preservim/tagbar",
    lazy = false,
    keys = {
      { "tb", "<CMD>TagbarToggle<CR>", desc = ":TagbarToggle" },
    }
  },
  {
    "RRethy/vim-illuminate",
    config = function(_, opts) require("illuminate").configure(opts) end,
    opts = {},
  },
  {
    "lfv89/vim-interestingwords",
    lazy = true,
    keys = {
      { "<leader>k", "<CMD>Interestingwords --toggle<CR>", desc = ":Interestingwords --toggle" },
      { "<leader>K", "<CMD>Interestingwords --remove_all", desc = ":Interestingwords --remove_all" },
    }
  },
  {
    "folke/persistence.nvim",
    event = "BufReadPre", -- this will only start session saving when an actual file was opened
    opts = {
      -- add any custom options here
    },
    keys = {
      { "<leader>qs", function() require("persistence").load() end,                desc = "load the session for the current directory" },
      { "<leader>qS", function() require("persistence").select() end,              desc = "select a session to load" },
      { "<leader>ql", function() require("persistence").load({ last = true }) end, desc = "load the last session" },
      { "<leader>qd", function() require("persistence").stop() end,                desc = "stop Persistence => session won't be saved on exit" },
    }
  }
}
