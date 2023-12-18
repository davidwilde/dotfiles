vim.api.nvim_create_autocmd({ "BufWritePost" }, {
    pattern = { *.ts, *.tsx, *.js, *.jsx },
    desc = "Prettier on save",
    callback = function()
        vim.cmd("FormatWrite")
    end,
    group = autocmd_group,
})

