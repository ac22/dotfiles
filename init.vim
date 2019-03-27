call plug#begin()
" General
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Javascript
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
" Typescript
Plug 'leafgarland/typescript-vim'
" Python
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'vim-python/python-syntax'
call plug#end()

" Color settings
if (has("termguicolors"))
        set termguicolors
endif
set background=light
colorscheme onehalflight

" General settings
set autowrite
set completeopt-=preview
set diffopt+=vertical
set expandtab
set fileformat=unix
set ignorecase
set nohlsearch
set noshowmatch
set noshowmode
set noswapfile
set number
set smartcase
set wildignore+=**/node_modules

au FileType javascript set shiftwidth=2 softtabstop=2 tabstop=2
au FileType typescript set shiftwidth=2 softtabstop=2 tabstop=2
au BufNewFile,BufRead *.tabla set tabstop=12 noexpandtab list nonu
au BufNewFile,BufRead *.txt set nonu

" ale
let g:ale_lint_on_enter = 0
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 0
let g:ale_sign_error = '✖'
let g:ale_sign_warning = '△'
" airline
let g:airline#extensions#tabline#enabled = 1
" deoplete
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_ignore_case = 1
let g:deoplete#enable_smart_case = 1
let g:deoplete#sources#jedi#python_path = '/usr/local/bin/python3'
" fzf
let g:fzf_layout = { 'window': 'enew' }
" python
let g:python_highlight_all = 1
let g:python_host_prog = '/usr/local/bin/python2'
let g:python3_host_prog = '/usr/local/bin/python3'
" vim-jsx
let g:jsx_ext_required = 0

" Key Mappings
inoremap jk <ESC>
vnoremap jk <ESC>
map <C-j> :bnext<CR>
map <C-k> :bprevious<CR>
map <C-p> :FZF<CR>
nmap <silent> <C-h> <Plug>(ale_previous_wrap)
nmap <silent> <C-l> <Plug>(ale_next_wrap)
" Use Tab for autocomplete
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
