call plug#begin()
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'fatih/vim-go'
  Plug 'sebdah/vim-delve'
  Plug 'preservim/nerdtree'
  Plug 'tpope/vim-fugitive'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'preservim/tagbar'
  Plug 'preservim/vimux'
  Plug 'kien/ctrlp.vim'
  Plug 'junegunn/fzf'
  Plug 'junegunn/fzf.vim'

  " color schemes
  "Plug 'NLKNguyen/papercolor-theme'
  "Plug 'nanotech/jellybeans.vim'
  Plug 'dracula/vim', { 'as': 'dracula' }
  "Plug 'cocopon/iceberg.vim'
  "Plug 'morhetz/gruvbox'
  "Plug 'sonph/onehalf', { 'rtp': 'vim' }
call plug#end()

" color scheme, true color and mouse
set termguicolors
colorscheme dracula
"let g:airline_theme='dracula'

" disable vim-go :GoDef short cut (gd)
" this is handled by LanguageClient [LC]
let g:go_def_mapping_enabled = 0

let g:coc_global_extensions = []
let g:coc_global_extensions += ['coc-go', 'coc-clangd', 'coc-sh', 'coc-vimlsp']
let g:coc_global_extensions += ['coc-protobuf', 'coc-thrift-syntax-support']
let g:coc_global_extensions += ['coc-json', 'coc-yaml']
let g:coc_global_extensions += ['coc-cmake']
let g:coc_global_extensions += ['coc-fzf-preview', 'coc-snippets']

source ~/.vim/config/vimrc.coc.default
source ~/.vim/config/vimrc.fatih.default

" other settings
set mouse=a
set scrolloff=6
set rtp+=/usr/local/opt/fzf
set wildmode=list:longest
set tabstop=4 shiftwidth=4

" fold settings
set foldmethod=syntax
set foldlevelstart=99

" shortcuts
nmap tb :TagbarToggle<CR>
nmap nt :NERDTreeToggle<CR>

