local M = {}

M.config = function()
    O.lang.css = {virtual_text = true, formatter = {exe = "prettier", args = {}}}
end

M.format = function()
    vim.cmd "let proj = FindRootDirectory()"
    local root_dir = vim.api.nvim_get_var "proj"

    -- use the global prettier if you didn't find the local one
    local prettier_instance = root_dir .. "/node_modules/.bin/prettier"
    if vim.fn.executable(prettier_instance) ~= 1 then prettier_instance = O.lang.tsserver.formatter.exe end

    local ft = vim.bo.filetype
    O.formatters.filetype[ft] = {
        function()
            local args = {"--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0))}
            -- TODO: O.lang.[ft].formatter.args
            local extend_args = O.lang.css.formatter.args

            for i = 1, #extend_args do table.insert(args, extend_args[i]) end

            return {exe = prettier_instance, args = args, stdin = true}
        end
    }
    require("formatter.config").set_defaults {logging = false, filetype = O.formatters.filetype}
end

M.lint = function()
    -- TODO: implement linters (if applicable)
    return "No linters configured!"
end

M.lsp = function()
    if not require("gv-utils").check_lsp_client_active "cssls" then
        -- npm install -g vscode-css-languageserver-bin
        require("lspconfig").cssls.setup {
            cmd = {
                "node",
                DATA_PATH .. "/lspinstall/css/vscode-css/css-language-features/server/dist/node/cssServerMain.js",
                "--stdio"
            },
            on_attach = require("lsp").common_on_attach,
            capabilities = require'lsp'.common_capabilities
        }
    end
end

M.dap = function()
    -- TODO: implement dap
    return "No DAP configured!"
end

return M
