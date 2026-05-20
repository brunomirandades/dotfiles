" Escape to Normal mode with 'jk'
inoremap jk <Esc>

" Enable mouse
set mouse=a

" Highlight the current line
set cursorline

" Disable the underline and set a soft, themed background
highlight CursorLine cterm=NONE ctermbg=236 guibg=#2f334d
highlight CursorLineNr cterm=NONE gui=bold guifg=#7aa2f7

" Disabling line highlight in Insert Mode
autocmd InsertEnter * set nocursorline
autocmd InsertLeave * set cursorline

" Leader the Leader key to the space bar
let mapleader = "\<Space>"

" Set save action to Space+w
nnoremap <Leader>w :w<cr>

" Set quit action to Space+q
nnoremap <Leader>q :q<cr>

" Set/Unset the 80 char column limiter reference
nnoremap <Leader>cc :set colorcolumn=80<cr>
nnoremap <Leader>ncc :set colorcolumn-=80<cr>

" Enable terminal with Space+t
nnoremap <Leader>t :term<cr>

" Cursor behavior (alacritty was overriding vim's cursor normal behavior -
" this corrects it)
let s:ti = &t_ti
let s:te = &t_te
let &t_ti = s:ti . "\e[2 q"   " block on enter
let &t_te = s:te . "\e[6 q"   " beam on exit
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"
let &t_SR = "\e[4 q"
let &t_SR = "\<Esc>[3 q"

" Enable line numbers
set number

" Enable syntax highlighting
syntax enable
syntax on

" Enable filetype detection
filetype plugin indent on

" Set tabs and spaces for coding
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" Enable line wrapping
set wrap

" Enable auto-indentation
set smartindent
set smarttab

" Enable search highlighting
set hlsearch
set incsearch

" Sync system clipboard
set clipboard=unnamedplus

" Language-specific settings
autocmd FileType php setlocal shiftwidth=4 softtabstop=4
autocmd FileType c setlocal shiftwidth=4 softtabstop=4
autocmd FileType go setlocal shiftwidth=4 softtabstop=4
autocmd FileType javascript setlocal shiftwidth=2 softtabstop=2
autocmd FileType sh setlocal shiftwidth=2 softtabstop=2
autocmd FileType html setlocal shiftwidth=2 softtabstop=2

" Files navigation support Space+f
nnoremap <Leader>f <esc>:Lex<cr>:vertical resize 30<cr>
