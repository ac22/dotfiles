filetype plugin indent on
syntax enable

call plug#begin('~/.vim/plugged')

" Use single quotes
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-surround'
Plug 'altercation/vim-colors-solarized'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

set background=light
colorscheme solarized
hi Normal ctermbg=none
hi NonText ctermbg=none
hi LineNr ctermbg=none

set tabstop=4
set shiftwidth=4
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
set number

set backspace=indent,eol,start

set so=5

let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = "solarized"

"Key Mappings
inoremap jk <ESC>
vnoremap jk <ESC> 

map <C-j> :bnext<CR>
map <C-k> :bprevious<CR>

nmap <space> zt
nmap n nzz
nmap N Nzz

command! Wq wq
