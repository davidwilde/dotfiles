set nocompatible              " be iMproved, required

filetype on
filetype off                  " required

filetype plugin indent on    " required

set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set laststatus=2
set expandtab

set foldmethod=syntax
set foldcolumn=2
set foldlevelstart=1

" Use ripgrep
set grepprg=rg\ --vimgrep
set grepformat^=%f:%l:%c:%m

nnoremap <silent> + :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> - :exe "resize " . (winheight(0) * 2/3)<CR>


" Show trailing whitespace
match ErrorMsg '\s\+$'

" Remove trailing whitespace on coffeescript and JSON files
autocmd BufWritePre *.coffee :%s/\s\+$//e
autocmd BufWritePre *.json :%s/\s\+$//e

let g:ctrlp_match_window = 'top,order:ttb'
let g:ctrlp_user_command = [ '.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
let g:netrw_liststyle = 3
let g:netrw_banner = 0

map Q <Nop>
map W <Nop>
cmap rg<Space> grep<Space>
let mapleader = " "


colorscheme nord
syntax enable

command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')
