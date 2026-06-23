---@type LazyPluginSpec[]
return {
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons", "SmiteshP/nvim-navic", },
    opts = {
      options = {
        section_separators = '',
        component_separators = '|',
        globalstatus = true,
      },
      sections = {
        lualine_c = {
          { "filename", path = 1, },
          {
            function() return require("nvim-navic").get_location() end,
            cond = function() return require("nvim-navic").is_available() end,
          },
        },
      },
    },
  },
  {
    'akinsho/bufferline.nvim',
    enabled = false,
    dependencies = 'nvim-tree/nvim-web-devicons',
    opts = {},
  },
  {
    "SmiteshP/nvim-navic",
    dependencies = { "neovim/nvim-lspconfig" },
    opts = {
      lsp = { auto_attach = true, preference = nil, },
    },
  }
}
