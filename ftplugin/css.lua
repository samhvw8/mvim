if not require("gv-utils").check_lsp_client_active "cssls" then
    -- npm install -g vscode-css-languageserver-bin
    require("lspconfig").cssls.setup {
        cmd = {
            "node",
            DATA_PATH .. "/lspinstall/css/vscode-css/css-language-features/server/dist/node/cssServerMain.js",
            "--stdio",
        },
        on_attach = require'lsp'.common_on_attach,
        capabilities = require'lsp'.common_capabilities
    }
end

vim.cmd "setl ts=2 sw=2"
