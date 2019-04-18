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

set winheight=30
set winminheight=5

nnoremap <silent> + :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> - :exe "resize " . (winheight(0) * 2/3)<CR>

syntax enable

" Show trailing whitespace
match ErrorMsg '\s\+$'

" Remove trailing whitespace on coffeescript and JSON files
autocmd BufWritePre *.coffee :%s/\s\+$//e
autocmd BufWritePre *.json :%s/\s\+$//e

autocmd BufWritePost *.js AsyncRun -post=checktime ./node_modules/.bin/eslint --fix %

let g:ctrlp_match_window = 'top,order:ttb'
let g:ctrlp_user_command = [ '.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:ale_sign_error = '⚠️'
let g:ale_sign_warning = '💩'
let g:ale_lint_on_enter = 0

map Q <Nop>
map W <Nop>
cmap rg<Space> grep<Space>
let mapleader = " "

let g:javascript_conceal_function             = "ƒ"
let g:javascript_conceal_null                 = "ø"
let g:javascript_conceal_this                 = "@"
let g:javascript_conceal_return               = "⇚"
let g:javascript_conceal_undefined            = "¿"
let g:javascript_conceal_NaN                  = "ℕ"
let g:javascript_conceal_prototype            = "¶"
let g:javascript_conceal_static               = "•"
let g:javascript_conceal_super                = "Ω"
let g:javascript_conceal_arrow_function       = "⇒"

let cole=1
