if require("gv-utils").check_lsp_client_active "jsonls" then
  return
end

-- npm install -g vscode-json-languageserver
require'lspconfig'.jsonls.setup {
    cmd = {
        "node", DATA_PATH .. "/lspinstall/json/vscode-json/json-language-features/server/dist/node/jsonServerMain.js",
        "--stdio"
    },
    on_attach = require'lsp'.common_on_attach,
    capabilities = require'lsp'.common_capabilities,
    commands = {
        Format = {
            function()
                vim.lsp.buf.range_formatting({}, {0, 0}, {vim.fn.line("$"), 0})
            end
        }
    },
    settings = {
        ["json.enable"] = true,
        ["json.format.enable"] = true,
        ["json.schemas"] = {
            {fileMatch = {"bower.json", ".bower.json"}, url = "http://schemastore.org/schemas/json/bower"},
            {fileMatch = {"tsconfig.json"}, url = "http://json.schemastore.org/tsconfig"},
            {fileMatch = {"package.json"}, url = "http://json.schemastore.org/package"}
        }
    }
}
