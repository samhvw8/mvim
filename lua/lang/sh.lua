local M = {}

M.config = function()
    O.lang.sh = {
        -- @usage can be 'shellcheck'
        linter = "",
        -- @usage can be 'shfmt'
        diagnostics = {virtual_text = {spacing = 0, prefix = ""}, signs = true, underline = true},
        formatter = {exe = "shfmt", args = {"-w"}, stdin = false},
        linters = {"shellcheck"}
    }
end

M.format = function()
    O.formatters.filetype["sh"] = {
        function()
            return {
                exe = O.lang.sh.formatter.exe,
                args = O.lang.sh.formatter.args,
                stdin = not (O.lang.sh.formatter.stdin ~= nil),
                tempfile_prefix = ".formatter"
            }
        end
    }

    require("formatter.config").set_defaults {logging = false, filetype = O.formatters.filetype}
end

M.lint = function()
    require("lint").linters_by_ft = {sh = O.lang.sh.linters}
end

M.lsp = function()
    if not require("gv-utils").check_lsp_client_active "bashls" then
        -- npm i -g bash-language-server
        require("lspconfig").bashls.setup {
            cmd = {DATA_PATH .. "/lspinstall/bash/node_modules/.bin/bash-language-server", "start"},
            on_attach = require("lsp").common_on_attach,
            capabilities = require'lsp'.common_capabilities,
            filetypes = {"sh", "zsh"}
        }
    end
end

M.dap = function()
    -- TODO: implement dap
    return "No DAP configured!"
end

return M
