return {
	{ "neovim/nvim-lspconfig" },
	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = { "neovim/nvim-lspconfig", "williamboman/mason.nvim" },
		opts = {
			-- Get available servers at:
			-- https://github.com/williamboman/mason-lspconfig.nvim#available-lsp-servers
			ensure_installed = {
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
			},
		},
		config = function(_, opts)
			require("mason-lspconfig").setup(opts)
			require("mason-lspconfig").setup_handlers({
				function(server_name)
					require("lspconfig")[server_name].setup({})
				end,
			})
		end,
	},
}
