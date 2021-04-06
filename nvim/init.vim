call plug#begin()
" General
Plug '/usr/local/opt/fzf'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'srcery-colors/srcery-vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Python
Plug 'vim-python/python-syntax'
call plug#end()

" Color settings
if (has("termguicolors"))
        set termguicolors
endif
set background=dark
let g:srcery_inverse=0
colorscheme srcery
" Set diff colors for high visibility
hi DiffAdd guifg=#1C1B19 guibg=#519F50
hi DiffDelete guifg=#EF2F27 guibg=#EF2F27
hi DiffChange guifg=#1C1B19 guibg=#0AAEB3
hi DiffText guifg=#1C1B19 guibg=#FBB829


" General settings
set autowrite
set clipboard+=unnamed
set completeopt-=preview
set diffopt+=vertical
set expandtab
set fileformat=unix
set ignorecase
set nohlsearch
set nonumber
set noshowmatch
set noshowmode
set noswapfile
set smartcase
set wildignore+=**/node_modules

au FileType javascript set shiftwidth=2 softtabstop=2 tabstop=2
au FileType typescript set shiftwidth=2 softtabstop=2 tabstop=2
au BufRead,BufNewFile *.gohtml set filetype=gohtmltmpl
autocmd BufEnter *.tsv set noexpandtab list completeopt-=i tabstop=16
autocmd BufEnter *.tsv inoremap <TAB> <C-V><TAB>
autocmd BufEnter *.tsv execute ':CocDisable'

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_tab_type = 0
" fzf
let g:fzf_layout = { 'window': 'enew' }
" go
let g:go_def_mapping_enabled = 0
let g:go_fmt_command = "goimports"
" python
let g:python_highlight_all = 1

" Key Mappings
inoremap jk <ESC>
vnoremap jk <ESC>
let mapleader = " "
map <C-j> :bnext<CR>
map <C-k> :bprevious<CR>
map <C-p> :GFiles --exclude-standard --others --cached<CR>
nmap <silent> <C-h> <Plug>(coc-diagnostic-prev)
nmap <silent> <C-l> <Plug>(coc-diagnostic-next)

" CoC Specific Key Mappings
" if hidden is not set, TextEdit might fail.
set hidden
" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=1

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
                        \ pumvisible() ? "\<C-n>" :
                        \ <SID>check_back_space() ? "\<TAB>" :
                        \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
        let col = col('.') - 1
        return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
        if (index(['vim','help'], &filetype) >= 0)
                execute 'h '.expand('<cword>')
        else
                call CocAction('doHover')
        endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
        autocmd!
        " Setup formatexpr specified filetype(s).
        autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
        " Update signature help on jump placeholder
        autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end
