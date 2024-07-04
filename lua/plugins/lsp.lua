-- Get available servers at:
-- https://github.com/williamboman/mason-lspconfig.nvim#available-lsp-servers
local mason_list = {
  "vimls",
  "lua_ls",
  "bashls",
  "jsonls",
  "clangd",
  "gopls",
  "golangci_lint_ls",
  "tsserver",
  "eslint",
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
    "neovim/nvim-lspconfig"
  },
  opts = {
    ensure_installed = mason_list,
    handlers = {
      function(server_name)
        local language_server_option = language_server_options[server_name]
        if language_server_option == nil then
          language_server_option = {}
        end
        require("lspconfig")[server_name].setup(language_server_option)
      end,
    }
  },
}
