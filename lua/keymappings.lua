vim.g.mapleader = " "

M = {}

local function register_mappings(mappings, default_options)
	for mode, mode_mappings in pairs(mappings) do
		for _, mapping in pairs(mode_mappings) do
			local options = #mapping == 3 and table.remove(mapping) or default_options
			local prefix, cmd = unpack(mapping)
			pcall(vim.api.nvim_set_keymap, mode, prefix, cmd, options)
		end
	end
end

local mappings = {
	i = { -- Insert mode
	},
	n = { -- Normal mode
		{ "0", "^", { noremap = true, silent = true } }, -- Better window movement,
		{ "<C-h>", "<C-w>h", { silent = true } },
		{ "<C-j>", "<C-w>j", { silent = true } },
		{ "<C-k>", "<C-w>k", { silent = true } },
		{ "<C-l>", "<C-w>l", { silent = true } },

		{ "<C-w><Left>", "<C-w>h", { silent = true } },
		{ "<C-w><Down>", "<C-w>j", { silent = true } },
		{ "<C-w><Up>", "<C-w>k", { silent = true } },
		{ "<C-w><Right>", "<C-w>l", { silent = true } },

		{ "]h", '<cmd>lua require "gitsigns".next_hunk()<cr>', { noremap = true, silent = true } },
		{ "[h", '<cmd>lua require "gitsigns".prev_hunk()<cr>', { noremap = true, silent = true } },
	},
	t = { -- Terminal mode
	},
	v = { -- Visual/Select mode
		-- Better indenting
		{ "<", "<gv" },
		{ ">", ">gv" },

		{ "]h", '<cmd>lua require "gitsigns".next_hunk()<cr>', { noremap = true, silent = true } },
		{ "[h", '<cmd>lua require "gitsigns".prev_hunk()<cr>', { noremap = true, silent = true } },

		-- { "p", '"0p', { silent = true } },
		-- { "P", '"0P', { silent = true } },
	},
	x = { -- Visual mode
	},
	[""] = {
		-- Toggle the QuickFix window
		{ "<C-q>", ":call QuickFixToggle()<CR>" },
		{ "*", [[<Plug>(asterisk-z*)<Cmd>lua require('hlslens').start()<CR>]], {} },
		{ "#", [[<Plug>(asterisk-z#)<Cmd>lua require('hlslens').start()<CR>]], {} },
		{ "g*", [[<Plug>(asterisk-gz*)<Cmd>lua require('hlslens').start()<CR>]], {} },
		{ "g#", [[<Plug>(asterisk-gz#)<Cmd>lua require('hlslens').start()<CR>]], {} },
	},
}

-- -- TODO: fix this
-- if vim.fn.has "mac" == 1 then
--     mappings["n"][5][1] = "<A-Up>"
--     mappings["n"][6][1] = "<A-Down>"
--     mappings["n"][7][1] = "<A-Left>"
--     mappings["n"][8][1] = "<A-Right>"
-- end

vim.g["asterisk#keeppos"] = 0
register_mappings(mappings, { silent = true, noremap = true })

-- no hl
-- vim.api.nvim_set_keymap('n', '<Leader>h', ':set hlsearch!<CR>', {noremap = true, silent = true})

-- better window movement

-- Better nav for omnicomplete
vim.cmd('inoremap <expr> <c-j> ("\\<C-n>")')
vim.cmd('inoremap <expr> <c-k> ("\\<C-p>")')