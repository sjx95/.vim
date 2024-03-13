return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function(_, opts)
      require('nvim-treesitter.configs').setup(opts)
    end,
    opts = {
      ensure_installed = { "go", "lua", "vimdoc" },
      highlight = { enable = true },
    },
  },
}
