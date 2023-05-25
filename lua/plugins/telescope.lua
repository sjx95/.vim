local builtin = setmetatable({}, {
  __index =
      function(_, key)
        return function(...)
          return require("telescope.builtin")[key](...)
        end
      end,
})

return {
  "nvim-telescope/telescope.nvim",
  dependencies = { "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
    "nvim-tree/nvim-web-devicons",
  },
  lazy = false,
  keys = {
    { "gd", builtin.lsp_definitions },
    { "gy", builtin.lsp_type_definitions },
    { "gr", builtin.lsp_references },
    { "gi", builtin.lsp_implementations },
  }
}
