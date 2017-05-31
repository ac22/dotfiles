filetype plugin indent on
syntax enable

call plug#begin()
" General
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Javascript
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
call plug#end()

set background=light
let g:gruvbox_invert_selection = 0
colorscheme gruvbox

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
set shiftwidth=4  " operation >> indents 4 columns; << unindents 4 columns
set tabstop=4     " a hard TAB displays as 4 columns
set expandtab     " insert spaces when hitting TABs
set softtabstop=4 " insert/delete 4 spaces when hitting a TAB/BACKSPACE
set autoindent    " align the new line indent with the previous line

au FileType javascript set shiftwidth=2 softtabstop=2 tabstop=2

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
" Fzf
let g:fzf_layout = { 'window': 'enew' }
autocmd FileType go nmap <leader>b  <Plug>(go-build)
autocmd FileType go nmap <leader>r  <Plug>(go-run)
" Vim-jsx
let g:jsx_ext_required = 0

" Key Mappings
inoremap jk <ESC>
vnoremap jk <ESC>
let mapleader = ","
map <C-j> :bnext<CR>
map <C-k> :bprevious<CR>
map <C-p> :FZF<CR>
map <C-b> :let &background = ( &background == "dark"? "light" : "dark" )<CR>
nmap <silent> <C-h> <Plug>(ale_previous_wrap)
nmap <silent> <C-l> <Plug>(ale_next_wrap)
" Use Tab for autocomplete
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
