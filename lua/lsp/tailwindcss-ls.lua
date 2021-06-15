local lspconfig = require 'lspconfig'
local configs = require 'lspconfig/configs'

-- Check if tailwindcss server already defined.
if not lspconfig.tailwindcss then configs['tailwindcss'] = {default_config = {}} end

lspconfig.tailwindcss.setup {
    cmd = {
        "node", DATA_PATH .. "/lspinstall/tailwindcss/tailwindcss-intellisense/extension/dist/server/tailwindServer.js",
        "--stdio"
    },
    on_attach = require'lsp'.common_on_attach,
    capabilities = require'lsp'.common_capabilities
}
