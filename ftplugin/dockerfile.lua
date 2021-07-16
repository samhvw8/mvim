if require("gv-utils").check_lsp_client_active "dockerls" then
  return
end


-- npm install -g dockerfile-language-server-nodejs
require'lspconfig'.dockerls.setup {
    cmd = {DATA_PATH .. "/lspinstall/dockerfile/node_modules/.bin/docker-langserver", "--stdio"},
    on_attach = require'lsp'.common_on_attach,
    capabilities = require'lsp'.common_capabilities,
    root_dir = vim.loop.cwd
}
