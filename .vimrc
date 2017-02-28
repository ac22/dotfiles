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
Plug 'Valloric/YouCompleteMe'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'w0rp/ale'
" Javascript
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
" Python
Plug 'nvie/vim-flake8'
Plug 'Vimjas/vim-python-pep8-indent'
call plug#end()

" Color settings
set termguicolors
colorscheme gruvbox
let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_contrast_light = 'hard'
set background=dark

" General settings
set autowrite
set completeopt-=preview
set diffopt+=vertical
set expandtab
set fileformat=unix
set ignorecase
set mouse-=a
set nohlsearch
set smartcase
set wildignore+=**/node_modules

" Non neovim
set wildmenu
set incsearch
set showmatch
set nobackup
set nowb
set noswapfile
set showcmd
set backspace=indent,eol,start
set laststatus=2

au FileType Python set shiftwidth=4 softtabstop=4 tabstop=4 textwidth=79
au FileType javascript set shiftwidth=2 softtabstop=2 tabstop=2


" ALE
let g:ale_lint_on_enter = 0
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 0
" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
" Fzf
let g:fzf_layout = { 'window': 'enew' }
" Python
let g:python_host_prog = '/usr/local/bin/python'
let g:python3_host_prog = '/usr/local/bin/python3'
let python_highlight_all = 1
" Vim-jsx
let g:jsx_ext_required = 0
" YouCompleteMe
let g:ycm_python_binary_path = '/usr/local/bin/python3'
let g:ycm_server_python_interpreter = '/usr/local/bin/python3'
let g:ycm_server_python_interpreter = '/usr/local/bin/python3'

"Key Mappings
inoremap jk <ESC>
vnoremap jk <ESC>

" Key Mappings
inoremap jk <ESC>
vnoremap jk <ESC>
map <C-j> :bnext<CR>
map <C-k> :bprevious<CR>
map <C-p> :FZF<CR>
map <C-b> :let &background = ( &background == "dark"? "light" : "dark" )<CR>
nmap <silent> <C-h> <Plug>(ale_previous_wrap)
nmap <silent> <C-l> <Plug>(ale_next_wrap)
