filetype plugin indent on
syntax enable

call plug#begin('~/.vim/plugged')

" Use single quotes
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-surround'
Plug 'chriskempson/base16-vim'

call plug#end()

set background=dark
colorscheme base16-default
hi Normal ctermbg=none
hi NonText ctermbg=none
hi LineNr ctermbg=none

set expandtab
set smarttab
set shiftwidth=4
set tabstop=4

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

"Key Mappings
inoremap jk <ESC>
vnoremap jk <ESC> 

nmap <space> zt
nmap n nzz
nmap N Nzz
