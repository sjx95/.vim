-- Available server list at:
-- https://github.com/mason-org/mason-lspconfig.nvim#available-lsp-servers
local mason_list = {
  "vimls",
  "lua_ls",
  "bashls",
  "jsonls",
  "clangd",
  "gopls",
  "golangci_lint_ls",
  "buf_ls",
  "thriftls",
}

local language_server_options = {
  clangd = { filetypes = { "c", "cpp", "objc", "objcpp", "cuda" } }
}

local lspconfig_name_overwrite = {}

return {
  "mason-org/mason-lspconfig.nvim",
  dependencies = {
    "mason-org/mason.nvim",
    "neovim/nvim-lspconfig",
    "hrsh7th/cmp-nvim-lsp",
  },
  opts = {
    ensure_installed = mason_list,
    handlers = {
      function(mason_server_name)
        local lspconfig_name = lspconfig_name_overwrite[mason_server_name] or mason_server_name

        local opts = language_server_options[mason_server_name] or {}
        opts['capabilities'] = require('cmp_nvim_lsp').default_capabilities()

        require("lspconfig")[lspconfig_name].setup(opts)
      end,
    }
  },
}
