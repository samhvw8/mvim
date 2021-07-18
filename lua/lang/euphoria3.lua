local M = {}

M.config = function()
    -- TODO: implement config for language
    return "No config available!"
end

M.format = function()
    -- TODO: implement formatter for language
    return "No formatter available!"
end

M.lint = function()
    -- TODO: implement linters (if applicable)
    return "No linters configured!"
end

M.lsp = function()
    if require("gv-utils").check_lsp_client_active "elixirls" then return end

    -- TODO: Remove this at some point
    require("lspconfig").elixirls.setup {
        cmd = {DATA_PATH .. "/lspinstall/elixir/elixir-ls/language_server.sh"},
        on_attach = require("lsp").common_on_attach,
        capabilities = require('lsp').common_capabilities
    }
end

-- needed for the LSP to recognize elixir files (alternativly just use elixir-editors/vim-elixir)
-- vim.cmd([[
--   au BufRead,BufNewFile *.ex,*.exs set filetype=elixir
--   au BufRead,BufNewFile *.eex,*.leex,*.sface set filetype=eelixir
--   au BufRead,BufNewFile mix.lock set filetype=elixir
-- ]])

M.dap = function()
    -- TODO: implement dap
    return "No DAP configured!"
end

return M
