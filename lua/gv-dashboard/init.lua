vim.g.dashboard_default_executive = 'telescope'

vim.g.dashboard_custom_section = {
    a = {
        description = {'  Find File          '},
        command = ':lua require("telescope").extensions.fzf_writer.files()'
    },
    b = {description = {'  Recently Used Files'}, command = 'Telescope oldfiles'},
    c = {description = {'  Update Package     '}, command = 'PackerSync'},
    d = {description = {'  Find Word          '}, command = "lua require('telescope').extensions.fzf_writer.grep()"},
    e = {description = {'  Settings           '}, command = ':e ~/.config/nvim/gv-settings.lua'}
}

