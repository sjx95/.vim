" color scheme, true color
set termguicolors
"colorscheme dracula

" disable vim-go :GoDef short cut (gd)
" this is handled by LanguageClient [LC]
autocmd FileType go let b:go_fmt_options = {'goimports': '-local ' . trim(system('cd '. shellescape(expand('%:p:h')) .' && go list -m'))}



" other settings
set mouse=a
set scrolloff=6
set rtp+=/usr/local/opt/fzf
set wildmode=list:longest

" tab settings
set tabstop=4 shiftwidth=4
autocmd FileType c,cpp setlocal et sta sw=2 sts=2
autocmd FileType javascript,typescript,javascriptreact,typescriptreact
			\setlocal et sta sw=2 sts=2

" fold settings
set foldmethod=syntax
set foldlevelstart=99

luafile ~/.config/nvim/xxx.lua

