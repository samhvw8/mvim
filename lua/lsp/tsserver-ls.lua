vim.cmd "let proj = FindRootDirectory()"
local root_dir = vim.api.nvim_get_var "proj"

-- use the global prettier if you didn't find the local one
local prettier_instance = root_dir .. "/node_modules/.bin/prettier"
if vim.fn.executable(prettier_instance) ~= 1 then prettier_instance = O.lang.tsserver.formatter.exe end

O.formatters.filetype["javascriptreact"] = {
    function()
        local args = {"--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0))}
        local extend_args = O.lang.tsserver.formatter.args
        for i = 1, #extend_args do table.insert(args, extend_args[i]) end
        return {exe = prettier_instance, args = args, stdin = true}
    end
}
O.formatters.filetype["javascript"] = O.formatters.filetype["javascriptreact"]
O.formatters.filetype["typescript"] = O.formatters.filetype["javascriptreact"]
O.formatters.filetype["typescriptreact"] = O.formatters.filetype["javascriptreact"]

require("formatter.config").set_defaults {logging = false, filetype = O.formatters.filetype}

if require("gv-utils").check_lsp_client_active "tsserver" then return end

-- npm install -g typescript typescript-language-server
-- require'snippets'.use_suggested_mappings()
-- local capabilities = vim.lsp.protocol.make_client_capabilities()
-- capabilities.textDocument.completion.completionItem.snippetSupport = true;
-- local on_attach_common = function(client)
-- print("LSP Initialized")
-- require'completion'.on_attach(client)
-- require'illuminate'.on_attach(client)
-- end
require("lspconfig").tsserver.setup {
    cmd = {DATA_PATH .. "/lspinstall/typescript/node_modules/.bin/typescript-language-server", "--stdio"},
    filetypes = {"javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx"},
    on_attach = require("lsp").tsserver_on_attach,
    capabilities = require'lsp'.common_capabilities,
    -- This makes sure tsserver is not used for formatting (I prefer prettier)
    -- on_attach = require'lsp'.common_on_attach,
    root_dir = require("lspconfig/util").root_pattern("package.json", "tsconfig.json", "jsconfig.json", ".git"),
    settings = {documentFormatting = false},
    handlers = {
        -- ["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
        --   virtual_text = O.lang.tsserver.diagnostics.virtual_text,
        --   signs = O.lang.tsserver.diagnostics.signs,
        --   underline = O.lang.tsserver.diagnostics.underline,
        --   update_in_insert = true,
        -- }),
    }
}
require("lsp.ts-fmt-lint").setup()
