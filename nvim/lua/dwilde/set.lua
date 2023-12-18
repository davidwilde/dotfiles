vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.termguicolors = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.colorcolumn = "80"

-- Define FileType-specific settings
vim.api.nvim_exec([[
  augroup FileTypeSpecific
    autocmd!
    autocmd FileType python setlocal tabstop=4 softtabstop=4 shiftwidth=4 expandtab smartindent
    autocmd FileType c setlocal tabstop=8 softtabstop=8 shiftwidth=8 noexpandtab smartindent
    autocmd FileType typescript,javascript setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab smartindent
    " Add more FileType-specific settings as needed
  augroup END
]], false)
