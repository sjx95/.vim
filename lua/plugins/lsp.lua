-- Get available servers at:
-- https://github.com/williamboman/mason-lspconfig.nvim#available-lsp-servers
local mason_list = {
	"vimls",
	"lua_ls",
	"bashls",
	"dockerls",
	"docker_compose_language_service",
	"jsonls",
	"yamlls",
	"clangd",
	"gopls",
	"golangci_lint_ls",
	"tsserver",
	"eslint",
}

return {
	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = { "williamboman/mason.nvim" },
		opts = { ensure_installed = mason_list, },
		config = function(_, opts)
			require("mason-lspconfig").setup(opts)
			require("mason-lspconfig").setup_handlers({
				function(server_name)
					local capabilities = require('cmp_nvim_lsp').default_capabilities()
					require("lspconfig")[server_name].setup({
						capabilities = capabilities,
					})
				end,
			})
		end,
	},
	{ "neovim/nvim-lspconfig" },
}
