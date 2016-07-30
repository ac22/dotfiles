filetype plugin indent on
syntax enable

call plug#begin('~/.vim/plugged')

" General
Plug 'morhetz/gruvbox'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ctrlpvim/ctrlp.vim'

" Javascript
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'

" Rust
Plug 'rust-lang/rust.vim'

" C
Plug 'vivien/vim-linux-coding-style'

call plug#end()

set background=dark
let g:gruvbox_termcolors=16
colorscheme gruvbox

set tabstop=2
set shiftwidth=2
set expandtab

set wildmenu
set ruler

set ignorecase
set smartcase
set hlsearch
set incsearch
set showmatch

set nobackup
set nowb
set noswapfile

set showcmd

set backspace=indent,eol,start

set so=5

set completeopt-=preview

set wildignore+=**/node_modules

let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"
let g:syntastic_javascript_checkers = ['eslint']

let g:airline#extensions#tabline#enabled = 1
let g:jsx_ext_required = 0 " Do not require .jsx extension to format jsx syntax

"Key Mappings
inoremap jk <ESC>
vnoremap jk <ESC> 

map <C-j> :bnext<CR>
map <C-k> :bprevious<CR>
map <C-l> <C-w>l<C-w>
map <C-h> <C-w>h<C-w>
