---@type LazyKeysSpec[]
local keys = {
  { '<leader>ff', '<CMD>Telescope find_files<CR>' },
  { '<leader>fg', function()
    require('telescope.builtin').live_grep({
      additional_args = {
        '--glob', '!openspec/**',
        '--glob', '!*_test.go',
      },
    })
  end, },
  { '<leader>fG', '<CMD>Telescope live_grep<CR>' },
  { '<leader>fb', '<CMD>Telescope buffers<CR>' },
  { '<leader>fh', '<CMD>Telescope help_tags<CR>' },
  { "gd",         '<CMD>Telescope lsp_definitions<CR>' },
  { "gy",         '<CMD>Telescope lsp_type_definitions<CR>' },
  { "gr",         "<CMD>lua require('telescope.builtin').lsp_references({file_ignore_patterns = { \"%_test.go\" } })<CR>" },
  { "gR",         "<CMD>lua require('telescope.builtin').lsp_references({})<CR>" },
  { "gI",         '<CMD>Telescope lsp_implementations<CR>' },
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

---@type LazyPluginSpec[]
return { {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "BurntSushi/ripgrep",
    "sharkdp/fd",
    "nvim-treesitter/nvim-treesitter",
    "nvim-tree/nvim-web-devicons",
    "nvim-telescope/telescope-fzf-native.nvim",
  },
  lazy         = false,
  keys         = keys,
  opts         = opts,
} }
