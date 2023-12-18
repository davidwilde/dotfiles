local lsp = require("lsp-zero")

lsp.on_attach(function(client, bufnr)
    lsp.default_keymaps({ buffer = bufnr })

    vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
    vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
    vim.keymap.set('n', 'gr', '<cmd>Telescope lsp_references<cr>', { buffer = bufnr })

    lsp.buffer_autoformat()
end)

require('mason').setup({})
require('mason-lspconfig').setup({
    -- Replace the language servers listed here
    -- with the ones you want to install
    ensure_installed = { 'gopls', 'rust_analyzer', 'jedi_language_server' },
    handlers = {
        lsp.default_setup,
        gopls = function()
            require('lspconfig').gopls.setup({
                on_attach = function(client, bufnr)
                    print('hello gopls')
                end
            })
        end,

        -- denols = function()
        --    require('lspconfig').denols.setup({
        --        on_attach = function(client, bufnr)
        --            print('hello denols')
        --        end
        --    })
        --end,

        tsserver = function()
            require('lspconfig').tsserver.setup({
                single_file_support = false,
                format_on_save = false,
                on_attach = function(client, bufnr)
                    print('hello tsserver')
                end
            })
        end,

        jedi_language_server = function()
            require('lspconfig').jedi_language_server.setup({
                on_attach = function(client, bufnr)
                    print('hello jedi_language_server')
                end
            })
        end,
    }
})



lsp.set_sign_icons({
    error = '✘',
    warn = '▲',
    hint = '⚑',
    info = '»'
})

lsp.format_on_save({
    format_opts = {
        async = false,
        timeout_ms = 10000,
    },
    servers = {
        ['tsserver'] = { 'javascript', 'typescript' },
        ['gopls'] = { 'go' },
    }
})
