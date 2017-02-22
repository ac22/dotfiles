call plug#begin()
" General
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'morhetz/gruvbox'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'w0rp/ale'
Plug 'zchee/deoplete-jedi'
" Javascript
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
" Python
Plug 'nvie/vim-flake8'
Plug 'Vimjas/vim-python-pep8-indent'
call plug#end()

" Color settings
set background=dark
set termguicolors
colorscheme gruvbox

" General settings
set autoindent
set autowrite
set cmdheight=1
set completeopt-=preview
set diffopt+=vertical
set expandtab
set fileformat=unix
set ignorecase
set list
set mouse-=a
set nohlsearch
set ruler
set smartcase
set wildignore+=**/node_modules

au FileType Python set shiftwidth=4 softtabstop=4 tabstop=4 textwidth=79
au FileType javascript set shiftwidth=2 softtabstop=2 tabstop=2

let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1

" ALE
let g:ale_lint_on_enter = 0
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 0
" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
" Deoplete
let g:deoplete#enable_at_startup = 1
" Fzf
let g:fzf_layout = { 'window': 'enew' }
" Vim-jsx
let g:jsx_ext_required = 0
" Python config
let g:python_host_prog = '/usr/local/bin/python'
let g:python3_host_prog = '/usr/local/bin/python3'

" Key Mappings
inoremap jk <ESC>
vnoremap jk <ESC>
map <C-j> :bnext<CR>
map <C-k> :bprevious<CR>
map <C-p> :FZF<CR>
" Use tab for autocompletion with deoplete
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
map <C-b> :let &background = ( &background == "dark"? "light" : "dark" )<CR>
nmap <silent> <C-h> <Plug>(ale_previous_wrap)
nmap <silent> <C-l> <Plug>(ale_next_wrap)
