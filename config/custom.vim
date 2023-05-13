" other settings
set mouse=a
set scrolloff=6
set wildmode=list:longest

" tab settings
set tabstop=4 shiftwidth=4
autocmd FileType go setlocal noexpandtab ts=4 sw=4
autocmd FileType c,cpp setlocal et sta sw=2 sts=2
autocmd FileType javascript,typescript,javascriptreact,typescriptreact
			\setlocal et sta sw=2 sts=2

" fold settings
set foldmethod=syntax
set foldlevelstart=99
