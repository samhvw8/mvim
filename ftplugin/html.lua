if require("gv-utils").check_lsp_client_active "html" then return end

require'lspconfig'.html.setup {
    cmd = {
        "node", DATA_PATH .. "/lspinstall/html/vscode-html/html-language-features/server/dist/node/htmlServerMain.js",
        "--stdio"
    },
    on_attach = require'lsp'.common_on_attach,
    capabilities = require'lsp'.common_capabilities
}

vim.cmd "setl ts=2 sw=2"

