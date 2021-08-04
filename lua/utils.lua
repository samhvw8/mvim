local M = {}

function M.check_lsp_client_active(name)
	local clients = vim.lsp.get_active_clients()
	for _, client in pairs(clients) do
		if client.name == name then
			return true
		end
	end
	return false
end

function M.define_augroups(definitions) -- {{{1
	-- Create autocommand groups based on the passed definitions
	--
	-- The key will be the name of the group, and each definition
	-- within the group should have:
	--    1. Trigger
	--    2. Pattern
	--    3. Text
	-- just like how they would normally be defined from Vim itself
	for group_name, definition in pairs(definitions) do
		vim.cmd("augroup " .. group_name)
		vim.cmd("autocmd!")

		for _, def in pairs(definition) do
			local command = table.concat(vim.tbl_flatten({ "autocmd", def }), " ")
			vim.cmd(command)
		end

		vim.cmd("augroup END")
	end
end

M.define_augroups({
	_general_settings = {
		{ "TextYankPost", "*", "lua require('vim.highlight').on_yank({higroup = 'Search', timeout = 200})" },
		{ "BufWinEnter", "*", "setlocal formatoptions-=c formatoptions-=r formatoptions-=o" },
		{ "BufRead", "*", "setlocal formatoptions-=c formatoptions-=r formatoptions-=o" },
		{ "BufNewFile", "*", "setlocal formatoptions-=c formatoptions-=r formatoptions-=o" },
		{ "VimLeavePre", "*", "set title set titleold=" },
	},
	-- _solidity = {
	--     {'BufWinEnter', '.sol', 'setlocal filetype=solidity'}, {'BufRead', '*.sol', 'setlocal filetype=solidity'},
	--     {'BufNewFile', '*.sol', 'setlocal filetype=solidity'}
	-- },
	-- _gemini = {
	--     {'BufWinEnter', '.gmi', 'setlocal filetype=markdown'}, {'BufRead', '*.gmi', 'setlocal filetype=markdown'},
	--     {'BufNewFile', '*.gmi', 'setlocal filetype=markdown'}
	-- },
	_markdown = { { "FileType", "markdown", "setlocal wrap" }, { "FileType", "markdown", "setlocal spell" } },
	_auto_resize = {
		-- will cause split windows to be resized evenly if main window is resized
		{ "VimResized", "*", "wincmd =" },
	},
	_packer_compile = {
		-- will cause split windows to be resized evenly if main window is resized
		{ "BufWritePost", "plugins.lua", "PackerCompile" },
	},
	_qf = {
		-- will cause split windows to be resized evenly if main window is resized
		{ "FileType", "qf", "set nobuflisted" },
	},
	-- _fterm_lazygit = {
	--   -- will cause esc key to exit lazy git
	--   {"TermEnter", "*", "call LazyGitNativation()"}
	-- },
	-- _mode_switching = {
	--   -- will switch between absolute and relative line numbers depending on mode
	--   {'InsertEnter', '*', 'if &relativenumber | let g:ms_relativenumberoff = 1 | setlocal number norelativenumber | endif'},
	--   {'InsertLeave', '*', 'if exists("g:ms_relativenumberoff") | setlocal relativenumber | endif'},
	--   {'InsertEnter', '*', 'if &cursorline | let g:ms_cursorlineoff = 1 | setlocal nocursorline | endif'},
	--   {'InsertLeave', '*', 'if exists("g:ms_cursorlineoff") | setlocal cursorline | endif'},
	-- },
})

vim.cmd([[
  function! QuickFixToggle()
    if empty(filter(getwininfo(), 'v:val.quickfix'))
      copen
    else
      cclose
    endif
endfunction
]])

-- misc
function M.file_exists(name)
	local f = io.open(name, "r")
	if f ~= nil then
		io.close(f)
		return true
	else
		return false
	end
end

return M
