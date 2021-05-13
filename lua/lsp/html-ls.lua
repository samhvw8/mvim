-- npm install -g vscode-html-languageserver-bin
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

-- Set default client capabilities plus window/workDoneProgress
capabilities = vim.tbl_extend('keep', capabilities, require'lsp'.common_capabilities);

require'lspconfig'.html.setup {
    cmd = {
        "node", DATA_PATH .. "/lspinstall/html/vscode-html/html-language-features/server/dist/node/htmlServerMain.js",
        "--stdio"
    },
    on_attach = require'lsp'.common_on_attach,
    capabilities = capabilities
}
