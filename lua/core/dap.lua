local M = {}
M.config = function()
    O.plugin.dap = {breakpoint = {text = "", texthl = "LspDiagnosticsSignError", linehl = "", numhl = ""}};

    O.plugin.dapui = {
        icons = {expanded = "⯆", collapsed = "⯈"},
        mappings = {
            -- Use a table to apply multiple mappings
            expand = {"<CR>", "<2-LeftMouse>"},
            open = "o",
            remove = "d",
            edit = "e"
        },
        sidebar = {
            elements = {
                -- You can change the order of elements in the sidebar
                "scopes", "breakpoints", "stacks", "watches"
            },
            width = 40,
            position = "left" -- Can be "left" or "right"
        },
        tray = {
            elements = {"repl"},
            height = 10,
            position = "bottom" -- Can be "bottom" or "top"
        },
        floating = {
            max_height = nil, -- These can be integers or a float between 0 and 1.
            max_width = nil -- Floats will be treated as percentage of your screen.
        }
    }
end

M.setup = function()
    local status_ok, dap = pcall(require, "dap")
    if not status_ok then return end

    vim.fn.sign_define("DapBreakpoint", O.plugin.dap.breakpoint)
    dap.defaults.fallback.terminal_win_cmd = "50vsplit new"

    O.user_which_key["d"] = {
        name = "Debug",
        t = {"<cmd>lua require'dap'.toggle_breakpoint()<cr>", "Toggle Breakpoint"},
        b = {"<cmd>lua require'dap'.step_back()<cr>", "Step Back"},
        c = {"<cmd>lua require'dap'.continue()<cr>", "Continue"},
        C = {"<cmd>lua require'dap'.run_to_cursor()<cr>", "Run To Cursor"},
        d = {"<cmd>lua require'dap'.disconnect()<cr>", "Disconnect"},
        g = {"<cmd>lua require'dap'.session()<cr>", "Get Session"},
        i = {"<cmd>lua require'dap'.step_into()<cr>", "Step Into"},
        o = {"<cmd>lua require'dap'.step_over()<cr>", "Step Over"},
        u = {"<cmd>lua require'dap'.step_out()<cr>", "Step Out"},
        p = {"<cmd>lua require'dap'.pause.toggle()<cr>", "Pause"},
        r = {"<cmd>lua require'dap'.repl.toggle()<cr>", "Toggle Repl"},
        s = {"<cmd>lua require'dap'.continue()<cr>", "Start"},
        q = {"<cmd>lua require'dap'.stop()<cr>", "Quit"}
    }

    local status_ui_ok, dapui = pcall(require, "dapui")
    if not status_ui_ok then return end

    dapui.setup(O.plugin.dapui)

    local status_install_ok, dap_install = pcall(require, "dap-install")
    if not status_install_ok then return end

    dap_install.setup({installation_path = CACHE_PATH .. "/tmp/test_dap_install/", verbosely_call_debuggers = true})
end

return M
