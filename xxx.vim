
source ~/.config/nvim/config/vimrc.fatih.default

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
