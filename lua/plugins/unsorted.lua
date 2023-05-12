return {
	"hrsh7th/cmp-nvim-lsp",
	"hrsh7th/cmp-buffer",
	"hrsh7th/cmp-path",
	"hrsh7th/cmp-cmdline",
	"hrsh7th/nvim-cmp",
	"saadparwaiz1/cmp_luasnip",
	"L3MON4D3/LuaSnip",

	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function(_, opts)
			require('nvim-treesitter.configs').setup(opts)
		end,
		opts = {
			ensure_installed = { "go" },
			highlight = { enable = true },
		},
	},
	{
		"RRethy/vim-illuminate",
		config = function(_, opts)
			require("illuminate").configure(opts)
		end,
		opts = {},
	},
	{
		'stevearc/dressing.nvim',
		opts = {},
	},

}
