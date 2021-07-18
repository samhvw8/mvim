local M = {}

M.config = function()
    O.lang.erlang = {}
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
    if require("gv-utils").check_lsp_client_active "erlangls" then return end

    require("lspconfig").erlangls.setup {
        on_attach = require("lsp").common_on_attach,
        capabilities = require('lsp').common_capabilities
    }
end

M.dap = function()
    -- TODO: implement dap
    return "No DAP configured!"
end

return M
