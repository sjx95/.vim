return {

	{ "williamboman/mason.nvim", build = ":MasonUpdate", opts = {} },

	"vim-airline/vim-airline",
	"vim-airline/vim-airline-themes",
	"tpope/vim-fugitive",
	"kien/ctrlp.vim",
	"junegunn/fzf",
	"junegunn/fzf.vim",

	{
		"nvim-neo-tree/neo-tree.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim",
		},
		opts = {},
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
}
