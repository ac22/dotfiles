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
" Javascript
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
" Python
Plug 'zchee/deoplete-jedi'
call plug#end()

" Color settings
let g:gruvbox_invert_selection = 0
set background=light
colorscheme gruvbox

" General settings
set autowrite
set completeopt-=preview
set diffopt+=vertical
set expandtab
set fileformat=unix
set ignorecase
set nohlsearch
set noshowmatch
set smartcase
set wildignore+=**/node_modules

au FileType javascript set shiftwidth=2 softtabstop=2 tabstop=2
autocmd FileType python nnoremap <LocalLeader>i :!isort %<CR><CR>
autocmd FileType python nnoremap <LocalLeader>= :0,$!yapf<CR>

" ale
let g:ale_lint_on_enter = 0
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 0
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'
" airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
" deoplete
let g:deoplete#enable_at_startup = 1
" fzf
let g:fzf_layout = { 'window': 'enew' }
" python
let g:python_host_prog = '/usr/local/bin/python'
let g:python3_host_prog = '/usr/local/bin/python3'
" vim-jsx
let g:jsx_ext_required = 0

" Key Mappings
inoremap jk <ESC>
vnoremap jk <ESC>
map <Space> <leader>
map <C-j> :bnext<CR>
map <C-k> :bprevious<CR>
map <C-p> :FZF<CR>
map <C-b> :let &background = ( &background == "dark"? "light" : "dark" )<CR>
nmap <silent> <C-h> <Plug>(ale_previous_wrap)
nmap <silent> <C-l> <Plug>(ale_next_wrap)
" Use Tab for autocomplete
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
