filetype plugin indent on
syntax enable

call plug#begin('~/.vim/plugged')

" General
Plug 'morhetz/gruvbox'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" Javascript
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'

call plug#end()

set background=dark
set termguicolors
colorscheme gruvbox

au FileType javascript set ts=2 sw=2 expandtab

set nu
set wildmenu
set ruler
set ignorecase
set smartcase
set incsearch
set showmatch
set nobackup
set nowb
set noswapfile
set showcmd
set autowrite
set backspace=indent,eol,start
set diffopt+=vertical
set completeopt-=preview
set wildignore+=**/node_modules
set laststatus=2
set mouse=a

let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exec = 'eslint_d'

let g:airline#extensions#tabline#enabled = 1
let g:jsx_ext_required = 0 " Do not require .jsx extension to format jsx syntax

"Key Mappings
inoremap jk <ESC>
vnoremap jk <ESC>

map <Space> <Leader>
nnoremap <Leader>x i
map <C-j> :bnext<CR>
map <C-k> :bprevious<CR>
map <C-l> <C-w>l<C-w>
map <C-h> <C-w>h<C-w>
map <C-p> :FZF<CR>
