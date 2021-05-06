require'nvim-treesitter.configs'.setup {
    ensure_installed = O.treesitter.ensure_installed, -- one of "all", "maintained" (parsers with maintainers), or a list of languages
    ignore_install = O.treesitter.ignore_install,
    highlight = {
        enable = O.treesitter.highlight.enabled -- false will disable the whole extension
    },
    indent = {enable = {"javascriptreact"}},
    autotag = {enable = true},
    textobjects = {
        select = {
            enable = true,
            keymaps = {
                -- You can use the capture groups defined in textobjects.scm
                ["af"] = "@function.outer",
                ["if"] = "@function.inner",
                ["ac"] = "@class.outer",
                ["ic"] = "@class.inner",

                -- Or you can define your own textobjects like this
                ["iF"] = {
                    python = "(function_definition) @function",
                    cpp = "(function_definition) @function",
                    c = "(function_definition) @function",
                    java = "(method_declaration) @function"
                }
            }
        },
        lsp_interop = {enable = true}
    },
    matchup = {
        enable = true -- mandatory, false will disable the whole extension
        -- disable = {"c", "ruby"} -- optional, list of language that will be disabled
    },
    playground = {
        enable = true,
        disable = {},
        updatetime = 25,
        persist_queries = false,
        keybindings = {
            toggle_query_editor = "o",
            toggle_hl_groups = "i",
            toggle_injected_languages = "t",
            toggle_anonymous_nodes = "a",
            toggle_language_display = "I",
            focus_language = "f",
            unfocus_language = "F",
            update = "R",
            goto_node = "<cr>",
            show_help = "?"
        }
    },
    autopairs = {enable = true},
    context_commentstring = {enable = true}
    -- refactor = {
    --     highlight_definitions = {enable = true},
    --     highlight_current_scope = {enable = true}
    --     -- smart_rename = {enable = true, keymaps = {smart_rename = "<leader>R"}}
    -- }
}

