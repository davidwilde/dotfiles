set nocompatible              " be iMproved, required
filetype on
filetype off                  " required

filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

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
set background=light
colorscheme solarized

" Show trailing whitespace
match ErrorMsg '\s\+$'

" Remove trailing whitespace on coffeescript and JSON files
autocmd BufWritePre *.coffee :%s/\s\+$//e
autocmd BufWritePre *.json :%s/\s\+$//e

let g:ctrlp_match_window = 'top,order:ttb'
let g:ctrlp_user_command = [ '.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
let g:netrw_liststyle=3


map Q <Nop>
map W <Nop>
let mapleader = " "

execute pathogen#infect()

set statusline+=%warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:airline_powerline_fonts = 1
