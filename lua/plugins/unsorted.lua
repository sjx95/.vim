return {
	'neovim/nvim-lspconfig',
	'hrsh7th/cmp-nvim-lsp',
	'hrsh7th/cmp-buffer',
	'hrsh7th/cmp-path',
	'hrsh7th/cmp-cmdline',
	'hrsh7th/nvim-cmp',
	'saadparwaiz1/cmp_luasnip',
	'L3MON4D3/LuaSnip',

	{'nvim-treesitter/nvim-treesitter', build = ':TSUpdate', lazy = false, config = true},

 
	{'preservim/nerdtree', lazy = false, keys = {
		{"nt", "<CMD>NERDTreeToggle<CR>", desc = "NERDTreeToggle" },
		{"nf", "<CMD>NERDTreeFind<CR>", desc = "NERDTreeFind" },
	}},

	{'preservim/tagbar', lazy = false, keys = {
		{"tb", "<CMD>TagbarToggle<CR>", desc = "TagbarToggle" },
	}},
	'vim-airline/vim-airline',
	'vim-airline/vim-airline-themes',
	{'tpope/vim-fugitive', lazy = false },
	{'kien/ctrlp.vim', lazy = false },

  'junegunn/fzf',
  'junegunn/fzf.vim',
   
}
