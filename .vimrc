filetype plugin indent on
syntax enable

call plug#begin('~/.vim/plugged')

" general stuff
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-surround'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" javascript stuff
Plug 'ternjs/tern_for_vim'
Plug 'valloric/youcompleteme'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'heavenshell/vim-jsdoc'

call plug#end()

set background=dark
colorscheme gruvbox

set tabstop=4
set shiftwidth=4
set expandtab
" use smaller size tabs for javascript files
autocmd Filetype javascript setlocal ts=2 sw=2

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

let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exec = 'eslint_d'

let g:airline#extensions#tabline#enabled = 1
let g:jsdoc_allow_input_prompt = 1
let g:jsx_ext_required = 0 " Allow JSX in normal JS files

"Key Mappings
inoremap jk <ESC>
vnoremap jk <ESC> 

map <C-j> :bnext<CR>
map <C-k> :bprevious<CR>
