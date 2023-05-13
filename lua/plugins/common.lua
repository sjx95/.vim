return {

	{ "williamboman/mason.nvim", opts = {}, build = ":MasonUpdate" },
	{ 'stevearc/dressing.nvim',  opts = {} },
	"tpope/vim-fugitive",
	"kien/ctrlp.vim",
	{ "junegunn/fzf.vim",        dependencies = { "junegunn/fzf" } },
	{ "vim-airline/vim-airline", dependencies = { "vim-airline/vim-airline-themes" } },
	{
		"nvim-neo-tree/neo-tree.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim",
		},
		opts = {},
		lazy = false,
		keys = {
			{ "nt", "<CMD>Neotree toggle=true<CR>", desc = ":Neotree toggle=true" },
			{ "nf", "<CMD>Neotree reveal=true<CR>", desc = ":Neotree reveal=true" },
		},
	},

	{
		"preservim/tagbar",
		lazy = false,
		keys = {
			{ "tb", "<CMD>TagbarToggle<CR>", desc = "TagbarToggle" },
		}
	},
	{
		"RRethy/vim-illuminate",
		config = function(_, opts)
			require("illuminate").configure(opts)
		end,
		opts = {},
	},

}
