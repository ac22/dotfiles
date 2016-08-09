call plug#begin('~/.config/nvim/plugged')

" General
function! DoRemote(arg)
  UpdateRemotePlugins
endfunction
Plug 'Shougo/deoplete.nvim', { 'do': function('DoRemote') }
Plug 'zchee/deoplete-go'
Plug 'neomake/neomake'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'

" Go
Plug 'fatih/vim-go'

call plug#end()

let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set background=dark
colorscheme gruvbox

set ruler
set ignorecase
set smartcase
set showmatch
set nobackup
set nowb
set noswapfile
set showcmd
set autowrite
set so=5
set diffopt+=vertical
set completeopt-=preview

let g:deoplete#enable_at_startup = 1
let g:airline#extensions#tabline#enabled = 1

au FileType javascript set ts=2 sw=2 expandtab

" Set up tab for Deoplete completion
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" Run Neomake on write
autocmd! BufWritePost * Neomake

"Key Mappings
inoremap jk <ESC>
vnoremap jk <ESC>

map <Space> <Leader>
nnoremap <Leader>x i
map <C-p> :FZF<CR>
map <C-j> :bnext<CR>
map <C-k> :bprevious<CR>
map <C-l> <C-w>l<C-w>
map <C-h> <C-w>h<C-w>
map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
nnoremap <leader>a :cclose<CR>
