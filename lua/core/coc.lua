local g = vim.g
local api = vim.api
local cmd = api.nvim_command
local fn = vim.fn

-- Add (Neo)Vim's native statusline support.
-- NOTE: Please see `:h coc-status` for integrations with external plugins that
-- provide custom statusline: lightline.vim, vim-airline.
-- === Airline is natively supported ===
-- o.statusline = o.statusline .. [[ %{coc#status()}%{get(b:,'coc_current_function','')} ]]

local function register_mappings(mappings, default_options)
	for mode, mode_mappings in pairs(mappings) do
		for _, mapping in pairs(mode_mappings) do
			local options = #mapping == 3 and table.remove(mapping) or default_options
			local prefix, cmd = unpack(mapping)
			pcall(vim.api.nvim_set_keymap, mode, prefix, cmd, options)
		end
	end
end

g.coc_global_extensions = {
   'coc-clangd',
   'coc-css',
   'coc-cssmodules',
   'coc-diagnostic',
   'coc-dictionary',
   'coc-docker',
   'coc-elixir',
   'coc-emmet',
   'coc-eslint',
   'coc-flutter',
   'coc-git',
   'coc-go',
   'coc-gocode',
   'coc-highlight',
   'coc-html',
   'coc-java',
   'coc-json',
   'coc-lua',
   'coc-marketplace',
   'coc-metals',
   'coc-phpls',
   'coc-prettier',
   'coc-project',
   'coc-pyright',
   'coc-react-refactor',
   'coc-rls',
   'coc-sh',
   'coc-snippets',
   'coc-solargraph',
   'coc-sourcekit',
   'coc-sql',
   'coc-styled-components',
   'coc-svg',
   'coc-tailwindcss',
   'coc-tslint-plugin',
   'coc-tsserver',
   'coc-vetur',
   'coc-vimlsp',
   'coc-webpack',
   'coc-word',
   'coc-xml',
   'coc-yaml',
   'coc-yank',
   'coc-lists',
    -- 'coc-rust-analyzer'
}

function _G.check_back_space()
    local col = fn.col('.') - 1
    if col == 0 or fn.getline('.'):sub(col, col):match('%s') then
        return true
    else
        return false
    end
end

function _G.show_docs()
    local cw = fn.expand('<cword>')
    if fn.index({ 'vim', 'help' }, vim.bo.filetype) >= 0 then
        cmd('h ' .. cw)
    elseif api.nvim_eval('coc#rpc#ready()') then
        fn.CocActionAsync('doHover')
    else
        cmd('!' .. vim.o.keywordprg .. ' ' .. cw)
    end
end

local mappings = {
	i = { -- Insert mode
        { "<TAB>", 'pumvisible() ? "<C-N>" : v:lua.check_back_space() ? "<TAB>" : coc#refresh()', { expr = true } },
        { "<S-TAB>", 'pumvisible() ? "<C-P>" : "<C-H>"', { expr = true } },
        { "<C-SPACE>", 'coc#refresh()', { expr = true } },
        {'<C-F>', 'coc#float#has_scroll() ? coc#float#scroll(1) : "<Right>"', { expr = true, silent = true, nowait = true }},
        {'<C-B>', 'coc#float#has_scroll() ? coc#float#scroll(0) : "<Left>"', { expr = true, silent = true, nowait = true }},
  --      {'<CR>',  'v:lua.MUtils.completion_confirm()', {expr = true, noremap = true}}
	},
	n = { -- Normal mode
        { "K", '<CMD>lua _G.show_docs()<CR>', { silent = true } },
        {'[g', '<Plug>(coc-diagnostic-prev)', { noremap = false }},
        {']g', '<Plug>(coc-diagnostic-next)', { noremap = false }},
        {'gb', '<Plug>(coc-cursors-word)', { noremap = false }},
        {'gd', '<Plug>(coc-definition)', { noremap = false }},
        {'gy', '<Plug>(coc-type-definition)', { noremap = false }},
        {'gi', '<Plug>(coc-implementation)', { noremap = false }},
        {'gr', '<Plug>(coc-references)', { noremap = false }},

        {'<C-F>', 'coc#float#has_scroll() ? coc#float#scroll(1) : "<C-F>"', { expr = true, silent = true, nowait = true }},
        {'<C-B>', 'coc#float#has_scroll() ? coc#float#scroll(0) : "<C-B>"', { expr = true, silent = true, nowait = true }},

	},
    o = {},
	t = { -- Terminal mode
	},
	v = { -- Visual/Select mode
	},
	x = { -- Visual mode
    { "<leader>a", '<CMD>lua _G.show_docs()<CR>', { silent = true } },
	},
	[""] = {
	},
}

vim.cmd([[
    " Add `:Format` command to format current buffer.
    command! -nargs=0 Format :call CocAction('format')

    " Add `:Fold` command to fold current buffer.
    command! -nargs=? Fold :call     CocAction('fold', <f-args>)

    " Add `:OR` command for organize imports of the current buffer.
    command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')
]])

require('utils').define_augroups({_coc = {
    {'filetype', 'typescript,json', 'setl', "formatexpr=CocAction('formatselected')"},
    {'User', 'CocQuickfixChange', ':CocList', '--normal', 'quickfix'},
    {  'user','cocjumpplaceholder','call',"CocActionAsync('showSignatureHelp')"},
}})


register_mappings(mappings, { silent = true, noremap = true })
