vim.o.completeopt = "menuone,noselect"
vim.o.dictionary = "/usr/share/dict/words"

local M = {}
M.config = function()
    O.completion = {
        autocomplete = true,
        debug = false,
        min_length = 1,
        preselect = 'enable',
        throttle_time = 100,
        source_timeout = 200,
        incomplete_delay = 400,
        max_abbr_width = 100,
        max_kind_width = 100,
        max_menu_width = 100,

        documentation = {
            border = {'', '', '', ' ', '', '', '', ' '}, -- the border option is the same as `|help nvim_open_win|`
            winhighlight = "NormalFloat:CompeDocumentation,FloatBorder:CompeDocumentationBorder",
            max_width = 120,
            min_width = 60,
            max_height = math.floor(vim.o.lines * 0.3),
            min_height = 1
        },

        source = {
            path = {kind = "   (Path)"},
            buffer = {kind = "   (Buffer)"},
            calc = {kind = "   (Calc)"},
            vsnip = {kind = "   (Snippet)"},
            nvim_lsp = {kind = "   (LSP)"},
            nvim_lua = {kind = "  "},
            spell = {kind = "   (Spell)"},
            -- tags = false,
            tags = {kind = " Tags"},
            vim_dadbod_completion = false,
            snippets_nvim = false,
            ultisnips = false,
            treesitter = false,
            -- treesitter = {kind = "  "},
            emoji = {kind = " ﲃ  (Emoji)", filetypes = {"markdown", "text"}},
            -- snippets_nvim = {kind = "  "},
            -- ultisnips = {kind = "  "},
            look = true
        }

    }
end

M.setup = function()
    vim.g.vsnip_snippet_dir = O.vsnip_dir

    local status_ok, compe = pcall(require, "compe")
    if not status_ok then return end

    compe.setup(O.completion)

    local t = function(str)
        return vim.api.nvim_replace_termcodes(str, true, true, true)
    end

    local check_back_space = function()
        local col = vim.fn.col "." - 1
        if col == 0 or vim.fn.getline("."):sub(col, col):match "%s" then
            return true
        else
            return false
        end
    end

    -- Use (s-)tab to:
    --- move to prev/next item in completion menuone
    --- jump to prev/next snippet's placeholder
    _G.tab_complete = function()
        if vim.fn.pumvisible() == 1 then
            return t "<C-n>"
        elseif vim.fn.call("vsnip#available", {1}) == 1 then
            return t "<Plug>(vsnip-expand-or-jump)"
        elseif check_back_space() then
            return t "<Tab>"
        else
            return vim.fn()
        end
    end

    _G.s_tab_complete = function()
        if vim.fn.pumvisible() == 1 then
            return t "<C-p>"
        elseif vim.fn.call("vsnip#jumpable", {-1}) == 1 then
            return t "<Plug>(vsnip-jump-prev)"
        else
            return t "<S-Tab>"
        end
    end

    vim.api.nvim_set_keymap("i", "<Tab>", "v:lua.tab_complete()", {expr = true})
    vim.api.nvim_set_keymap("s", "<Tab>", "v:lua.tab_complete()", {expr = true})
    vim.api.nvim_set_keymap("i", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
    vim.api.nvim_set_keymap("s", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})

    vim.api.nvim_set_keymap("i", "<C-Space>", "compe#complete()", {noremap = true, silent = true, expr = true})
    vim.api.nvim_set_keymap("i", "<CR>", "compe#confirm('<CR>')", {noremap = true, silent = true, expr = true})
    vim.api.nvim_set_keymap("i", "<C-e>", "compe#close('<C-e>')", {noremap = true, silent = true, expr = true})
    vim.api.nvim_set_keymap("i", "<C-f>", "compe#scroll({ 'delta': +4 })", {noremap = true, silent = true, expr = true})
    vim.api.nvim_set_keymap("i", "<C-d>", "compe#scroll({ 'delta': -4 })", {noremap = true, silent = true, expr = true})
end

-- local saga = require "lspsaga"
-- 
-- local opts = {debug = true}
-- saga.init_lsp_saga(opts)
-- 
-- require('lspkind').init({
--     with_text = true,
--     symbol_map = {
--         Text = '',
--         Method = 'ƒ',
--         Function = '',
--         Constructor = '',
--         Variable = '',
--         Class = '',
--         Interface = 'ﰮ',
--         Module = '',
--         Property = '',
--         Unit = '',
--         Value = '',
--         Enum = '了',
--         Keyword = '',
--         Snippet = '﬌',
--         Color = '',
--         File = '',
--         Folder = '',
--         EnumMember = '',
--         Constant = '',
--         Struct = ''
--     }
-- })

return M
