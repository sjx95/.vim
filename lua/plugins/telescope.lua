return {
  "nvim-telescope/telescope.nvim",
  dependencies = { "nvim-lua/plenary.nvim", "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons", },
  lazy = false,
  keys = {
    { '<C-p>', '<CMD>Telescope find_files<CR>' },
    { "gd",    '<CMD>Telescope lsp_definitions<CR>' },
    { "gy",    '<CMD>Telescope lsp_type_definitions<CR>' },
    { "gr",    '<CMD>Telescope lsp_references<CR>' },
    { "gi",    '<CMD>Telescope lsp_implementations<CR>' },
  }
}
