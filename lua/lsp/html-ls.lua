-- npm install -g vscode-html-languageserver-bin
require'lspconfig'.html.setup {
    cmd = {
        "node", DATA_PATH .. "/lspinstall/html/vscode-html/html-language-features/server/dist/node/htmlServerMain.js",
        "--stdio"
    },
    on_attach = require'lsp'.common_on_attach,
    capabilities = require'lsp'.common_capabilities
}
