if require("gv-utils").check_lsp_client_active "dartls" then
  return
end

require("lspconfig").dartls.setup {
  cmd = { "dart", O.lang.dart.sdk_path, "--lsp" },
  on_attach = require("lsp").common_on_attach,
    capabilities = require'lsp'.common_capabilities,
  init_options = {
    closingLabels = false,
    flutterOutline = false,
    onlyAnalyzeProjectsWithOpenFiles = false,
    outline = false,
    suggestFromUnimportedLibraries = true,
  },
}


require("flutter-tools").setup {
    debugger = { -- integrate with nvim dap + install dart code debugger
        enabled = false,
    },
    -- flutter_path = "<full/path/if/needed>", -- <-- this takes priority over the lookup
    flutter_lookup_cmd = nil, -- example "dirname $(which flutter)" or "asdf where flutter"
    widget_guides = {
        enabled = false,
    },
    closing_tags = {
        highlight = "ErrorMsg", -- highlight for the closing tag
        prefix = ">", -- character to use for close tag e.g. > Widget
        enabled = true -- set to false to disable
    },
    dev_log = {
        open_cmd = "tabedit", -- command to use to open the log buffer
    },
    dev_tools = {
        autostart = false, -- autostart devtools server if not detected
    },
    outline = {
        open_cmd = "30vnew", -- command to use to open the outline buffer
    },
    lsp = {
        on_attach = require'lsp'.common_on_attach,
        capabilities = require'lsp'.common_capabilities,
        settings = {
            showTodos = true,
            completeFunctionCalls = true -- NOTE: this is WIP and doesn't work currently
        }
    }
}
