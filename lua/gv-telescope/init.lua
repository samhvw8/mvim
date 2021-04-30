local actions = require('telescope.actions')
-- Global remapping
------------------------------
-- '--color=never',
require('telescope').setup {
    defaults = {
        find_command = {
            "rg", "--color=never", "--no-heading", "--with-filename", "--line-number", "--column", "--smart-case"
        },
        prompt_position = "bottom",
        -- prompt_prefix = " ",
        prompt_prefix = " ",
        selection_caret = " ",
        entry_prefix = "  ",
        -- initial_mode = "insert",
        selection_strategy = "reset",
        sorting_strategy = "descending",
        layout_strategy = "horizontal",
        layout_defaults = {horizontal = {mirror = false, preview_width = 0.5}, vertical = {mirror = false}},
        file_sorter = require'telescope.sorters'.get_fuzzy_file,
        file_ignore_patterns = {},
        generic_sorter = require'telescope.sorters'.get_generic_fuzzy_sorter,
        shorten_path = true,
        winblend = 0,
        width = 0.75,
        preview_cutoff = 120,
        results_height = 1,
        results_width = 0.8,
        border = {},
        borderchars = {'─', '│', '─', '│', '╭', '╮', '╯', '╰'},
        color_devicons = true,
        use_less = true,
        set_env = {['COLORTERM'] = 'truecolor'}, -- default = nil,
        file_previewer = require'telescope.previewers'.vim_buffer_cat.new,
        grep_previewer = require'telescope.previewers'.vim_buffer_vimgrep.new,
        qflist_previewer = require'telescope.previewers'.vim_buffer_qflist.new,
        buffer_previewer_maker = require'telescope.previewers'.buffer_previewer_maker,
        mappings = {
            i = {
                ["<C-j>"] = actions.move_selection_next,
                ["<C-k>"] = actions.move_selection_previous,
                ["<C-q>"] = actions.smart_send_to_qflist + actions.open_qflist,
                -- To disable a keymap, put [map] = false
                -- So, to not map "<C-n>", just put
                -- ["<c-x>"] = false,

                -- Otherwise, just set the mapping to the function that you want it to be.
                -- ["<C-i>"] = actions.select_horizontal,

                -- Add up multiple actions
                ["<CR>"] = actions.select_default + actions.center

                -- You can perform as many actions in a row as you like
                -- ["<CR>"] = actions.select_default + actions.center + my_cool_custom_action,
            },
            n = {
                ["<C-j>"] = actions.move_selection_next,
                ["<C-k>"] = actions.move_selection_previous,
                ["<C-q>"] = actions.smart_send_to_qflist + actions.open_qflist
                -- ["<C-i>"] = my_cool_custom_action,
            }
        },
        extensions = {
            media_files = {
                filetypes = {"png", "webp", "jpg", "jpeg"},
                find_cmd = "rg" -- find command (defaults to `fd`)
            },
            fzy_native = {override_generic_sorter = false, override_file_sorter = true},
            lsp_handlers = {
                location = {telescope = {}, no_results_message = 'No references found'},
                symbol = {telescope = {}, no_results_message = 'No symbols found'},
                call_hierarchy = {telescope = {}, no_results_message = 'No calls found'},
                disable = {['textDocument/codeAction'] = true}
            },
            project = {}
        }
    }
}

require('telescope').load_extension('fzy_native')
require("telescope").load_extension("media_files")
require'telescope'.load_extension('project')
require'telescope'.load_extension 'node_modules'
require'telescope'.load_extension('lsp_handlers')

local opt = {noremap = true, silent = true}

vim.api.nvim_set_keymap("n", "<M-p>", [[<Cmd>Telescope find_files<CR>]], opt)
vim.api.nvim_set_keymap("n", "<M-1>",
                        ':lua require("telescope.builtin").grep_string { search = "' ..
                            table.concat(O.telescope.todo.keywords, "|") .. '" }<CR>', opt)
vim.api.nvim_set_keymap("n", "<M-2>", [[<Cmd>Telescope<CR>]], opt)
vim.api.nvim_set_keymap("n", "<M-3>", [[<Cmd>Telescope lsp_workspace_symbols<CR>]], opt)
vim.api.nvim_set_keymap("n", "<M-4>", [[<Cmd>Telescope file_browser<CR>]], opt)
vim.api.nvim_set_keymap("n", "<M-\\>", [[<Cmd>Telescope live_grep<CR>]], opt)

vim.api.nvim_set_keymap('n', '<leader>p', ":lua require'telescope'.extensions.project.project{}<CR>",
                        {noremap = true, silent = true})

-- local cmd = vim.cmd

-- cmd "hi TelescopeBorder   guifg=#2a2e36"
-- cmd "hi TelescopePromptBorder   guifg=#2a2e36"
-- cmd "hi TelescopeResultsBorder  guifg=#2a2e36"
-- cmd "hi TelescopePreviewBorder  guifg=#525865"
