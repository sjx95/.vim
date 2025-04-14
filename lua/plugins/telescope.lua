local keys = {
  { '<C-p>',      '<CMD>Telescope find_files<CR>' },
  { '<leader>ff', '<CMD>Telescope find_files<CR>' },
  { '<leader>fg', '<CMD>Telescope live_grep<CR>' },
  { '<leader>fb', '<CMD>Telescope buffers<CR>' },
  { '<leader>fh', '<CMD>Telescope help_tags<CR>' },
  { "gd",         '<CMD>Telescope lsp_definitions<CR>' },
  { "gy",         '<CMD>Telescope lsp_type_definitions<CR>' },
  { "gr",         '<CMD>Telescope lsp_references<CR>' },
  { "gi",         '<CMD>Telescope lsp_implementations<CR>' },
}

local opts = {
  defaults = {
    layout_strategy = 'vertical',
    layout_config = { preview_cutoff = 20 },
  },
  pickers = {
    lsp_references = { fname_width = 0.5 },
  },
}

return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "BurntSushi/ripgrep",
    "sharkdp/fd",
    "nvim-treesitter/nvim-treesitter",
    "nvim-tree/nvim-web-devicons",
  },
  lazy         = false,
  keys         = keys,
  opts         = opts,
}
