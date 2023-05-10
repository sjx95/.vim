return {
	"vim-airline/vim-airline",
	"vim-airline/vim-airline-themes",
	"kien/ctrlp.vim",
	"junegunn/fzf",
	"junegunn/fzf.vim",

	{
		"preservim/nerdtree",
		lazy = false,
		keys = {
			{ "nt", "<CMD>NERDTreeToggle<CR>", desc = "NERDTreeToggle" },
			{ "nf", "<CMD>NERDTreeFind<CR>",   desc = "NERDTreeFind" },
		},
	},

	{
		"preservim/tagbar",
		lazy = false,
		keys = {
			{ "tb", "<CMD>TagbarToggle<CR>", desc = "TagbarToggle" },
		}
	},
	{ "tpope/vim-fugitive", lazy = false },
}
