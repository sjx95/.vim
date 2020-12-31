" disable vim-go :GoDef short cut (gd)
" this is handled by LanguageClient [LC]
let g:go_def_mapping_enabled = 0

source ~/.vim/config/vimrc.fatih.default

source ~/.vim/config/vimrc.coc.default

set scrolloff=6
set rtp+=/usr/local/opt/fzf
set wildmode=list:longest

nmap tb :TagbarToggle<CR>
nmap nt :NERDTreeToggle<CR>

