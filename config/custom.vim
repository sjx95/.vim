" other settings
set mouse=a
set scrolloff=6
set wildmode=list:longest

" tab settings
set et sta sw=4 sts=4
autocmd FileType go setlocal noet sta ts=4 sw=4
autocmd FileType lua setlocal et sta sw=2 sts=2
autocmd FileType c,cpp,proto setlocal et sta sw=2 sts=2
autocmd FileType javascript,typescript,javascriptreact,typescriptreact
			\ setlocal et sta sw=2 sts=2

" folding
set foldmethod=expr
set foldexpr=v:lua.vim.treesitter.foldexpr()
set foldlevelstart=99
