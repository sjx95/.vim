local mason_list = {
	"goimports-reviser",
	"gomodifytags",
}

return {
	{
		"jay-babu/mason-null-ls.nvim",
		dependencies = { "williamboman/mason.nvim" },
		opts = {
			ensure_installed = mason_list,
			handlers = {}, -- allow register all installed module automatically
		},
	},
	{
		"jose-elias-alvarez/null-ls.nvim",
		dependencies = { "nvim-lua/plenary.nvim", "jay-babu/mason-null-ls.nvim" },
		opts = { sources = {} },
	},
}
