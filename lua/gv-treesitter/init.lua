require'nvim-treesitter.configs'.setup {
    ensure_installed = O.treesitter.ensure_installed, -- one of "all", "maintained" (parsers with maintainers), or a list of languages
    ignore_install = O.treesitter.ignore_install,
    highlight = {
        enable = O.treesitter.highlight.enabled -- false will disable the whole extension
    },
    -- indent = {enable = true, disable = {"python", "html", "javascript"}},
    -- TODO seems to be broken
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
    }
    -- refactor = {
    --     highlight_definitions = {enable = true},
    --     highlight_current_scope = {enable = true}
    --     -- smart_rename = {enable = true, keymaps = {smart_rename = "<leader>R"}}
    -- }
}

