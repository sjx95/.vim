-- Available server list at:
-- https://github.com/williamboman/mason-lspconfig.nvim#available-lsp-servers
local mason_list = {
  "vimls",
  "lua_ls",
  "bashls",
  "jsonls",
  "clangd",
  "gopls",
  "golangci_lint_ls",
  "bufls",
  "thriftls",
}

local language_server_options = {
  clangd = { filetypes = { "c", "cpp", "objc", "objcpp", "cuda" } }
}

return {
  "williamboman/mason-lspconfig.nvim",
  dependencies = {
    "williamboman/mason.nvim",
    "neovim/nvim-lspconfig",
    "hrsh7th/cmp-nvim-lsp",
  },
  opts = {
    ensure_installed = mason_list,
    handlers = {
      function(server_name)
        local opts = language_server_options[server_name] or {}
        opts['capabilities'] = require('cmp_nvim_lsp').default_capabilities()
        require("lspconfig")[server_name].setup(opts)
      end,
    }
  },
}
