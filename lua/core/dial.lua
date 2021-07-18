local status_ok, dial = pcall(require, "dial")
if not status_ok then return end

-- Get the default dict of patterns
vim.api.nvim_set_keymap('n', '<C-a>', '<Plug>(dial-increment)', {silent = false})
vim.api.nvim_set_keymap('n', '<C-x>', '<Plug>(dial-decrement)', {silent = false})
vim.api.nvim_set_keymap('v', '<C-a>', '<Plug>(dial-increment)', {silent = false})
vim.api.nvim_set_keymap('v', '<C-x>', '<Plug>(dial-decrement)', {silent = false})
vim.api.nvim_set_keymap('v', 'g<C-a>', '<Plug>(dial-increment-additional)', {silent = false})
vim.api.nvim_set_keymap('v', 'g<C-x>', '<Plug>(dial-decrement-additional)', {silent = false})

dial.config.searchlist = {
    normal = {
        "number#decimal", "number#decimal#int", "number#decimal#fixed#zero", "number#decimal#fixed#space", "number#hex",
        "number#binary", "date#[%Y/%m/%d]", "date#[%m/%d]", "markup#markdown#header", "color#hex"
    },
    visual = {
        "number#decimal", "number#decimal#int", "number#decimal#fixed#zero", "number#decimal#fixed#space", "number#hex",
        "number#binary", "date#[%Y/%m/%d]", "date#[%m/%d]", "markup#markdown#header", "color#hex"
    }
}

dial.augends["custom#boolean#normal"] = dial.common.enum_cyclic {name = "boolean#normal", strlist = {"true", "false"}}
table.insert(dial.config.searchlist.normal, "custom#boolean#normal")
table.insert(dial.config.searchlist.visual, "custom#boolean#normal")

dial.augends["custom#boolean#cap"] = dial.common.enum_cyclic {name = "boolean#normal#cap", strlist = {"True", "False"}}
table.insert(dial.config.searchlist.normal, "custom#boolean#cap")
table.insert(dial.config.searchlist.visual, "custom#boolean#cap")

dial.augends["custom#yes-no"] = dial.common.enum_cyclic {name = "yes-no", strlist = {"yes", "no"}}
table.insert(dial.config.searchlist.normal, "custom#yes-no")
table.insert(dial.config.searchlist.visual, "custom#yes-no")
