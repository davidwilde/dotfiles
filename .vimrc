set nocompatible              " be iMproved, required
filetype on
filetype off                  " required

filetype plugin indent on    " required

set number

set autoindent
set smartindent
set smarttab
set shiftwidth=4
set softtabstop=4
set laststatus=2
set expandtab

set foldmethod=syntax
set foldcolumn=2
set foldlevelstart=1

command -nargs=+ Ggr execute 'silent Ggrep!' <q-args> | cw | redraw!
syntax enable

" Show trailing whitespace
match ErrorMsg '\s\+$'

" Remove trailing whitespace on coffeescript and JSON files
autocmd BufWritePre *.coffee :%s/\s\+$//e
autocmd BufWritePre *.json :%s/\s\+$//e

call plug#begin()
Plug 'fatih/vim-go', { 'tag': '*'}
Plug 'leafgarland/typescript-vim'
call plug#end()

let g:ctrlp_match_window = 'top,order:ttb'
let g:ctrlp_user_command = [ '.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
let g:netrw_liststyle=3


map Q <Nop>
map W <Nop>
let mapleader = " "

