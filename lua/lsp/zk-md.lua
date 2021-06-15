local lspconfig = require('lspconfig')
local configs = require('lspconfig/configs')

configs.zk = {
    default_config = {
        cmd = {'zk', 'lsp'},
        filetypes = {'markdown'},
        root_dir = function()
            return vim.loop.cwd()
        end,
        settings = {}
    }
}

lspconfig.zk.setup({on_attach = require'lsp'.common_on_attach, capabilities = require'lsp'.common_capabilities})
