return {
	{
		"jay-babu/mason-null-ls.nvim",
		dependencies = { "williamboman/mason.nvim" },
		opts = {
			ensure_installed = { 'goimports-reviser' },
			automatic_installation = false,
			handlers = {},
		}
	},
	{
		"jose-elias-alvarez/null-ls.nvim",
		dependencies = { "nvim-lua/plenary.nvim", "jay-babu/mason-null-ls.nvim" },
		opts = {
			sources = {},
		}
	},
}
