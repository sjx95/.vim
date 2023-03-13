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
  Plug 'dracula/vim', { 'as': 'dracula' }
call plug#end()

" color scheme, true color
set termguicolors
colorscheme dracula

" disable vim-go :GoDef short cut (gd)
" this is handled by LanguageClient [LC]
let g:go_def_mapping_enabled = 0
let g:go_gopls_enabled = 0
autocmd FileType go let b:go_fmt_options = {'goimports': '-local ' . trim(system('cd '. shellescape(expand('%:p:h')) .' && go list -m'))}

let g:coc_global_extensions = []
let g:coc_global_extensions += ['coc-go', 'coc-clangd', 'coc-tsserver', 'coc-sh', 'coc-vimlsp']
let g:coc_global_extensions += ['coc-protobuf', 'coc-thrift-syntax-support']
let g:coc_global_extensions += ['coc-json', 'coc-yaml', 'coc-html']
let g:coc_global_extensions += ['coc-cmake']
let g:coc_global_extensions += ['coc-lists', 'coc-marketplace', 'coc-fzf-preview', 'coc-snippets']

source ~/.vim/config/vimrc.coc.default
source ~/.vim/config/vimrc.fatih.default

" other settings
set mouse=a
set scrolloff=6
set rtp+=/usr/local/opt/fzf
set wildmode=list:longest

" tab settings
set tabstop=4 shiftwidth=4
autocmd FileType javascript setlocal et sta sw=2 sts=2
autocmd FileType typescript setlocal et sta sw=2 sts=2
autocmd FileType javascriptreact setlocal et sta sw=2 sts=2
autocmd FileType typescriptreact setlocal et sta sw=2 sts=2

" fold settings
set foldmethod=syntax
set foldlevelstart=99

" shortcuts
nmap tb :TagbarToggle<CR>
nmap nt :NERDTreeToggle<CR>
nmap nf :NERDTreeFind<CR>
