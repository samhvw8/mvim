require'lspconfig'.svelte.setup {
    cmd = {DATA_PATH .. "/lspinstall/svelte/node_modules/.bin/svelteserver", "--stdio"},
    capabilities = require'lsp'.common_capabilities,
    on_attach = require'lsp'.common_on_attach
}
