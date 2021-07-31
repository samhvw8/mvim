local M = {}

M.setup = function()
	local status_ok, telescope = pcall(require, "telescope")
	if not status_ok then
		return
	end

	local status_ok, actions = pcall(require, "telescope.actions")
	if not status_ok then
		return
	end
	telescope.setup({
		pickers = {
			-- Your special builtin config goes in here
			buffers = {
				sort_lastused = true,
				theme = "dropdown",
				previewer = false,
				mappings = {
					i = { ["<c-d>"] = require("telescope.actions").delete_buffer },
					n = { ["<c-d>"] = require("telescope.actions").delete_buffer },
				},
			},
			find_files = { theme = "dropdown" },
		},
		defaults = {
			find_command = {
				"rg",
				"--color=never",
				"--no-heading",
				"--with-filename",
				"--line-number",
				"--column",
				"--smart-case",
			},
			-- prompt_prefix = " ",
			prompt_prefix = " ",
			selection_caret = " ",
			entry_prefix = "  ",
			-- initial_mode = "insert",
			selection_strategy = "reset",
			sorting_strategy = "descending",
			layout_strategy = "horizontal",
			layout_config = {
				prompt_position = "bottom",
				preview_cutoff = 120,
				width = 0.75,
				horizontal = { mirror = false, preview_width = 0.5 },
				vertical = { mirror = false },
			},
			file_sorter = require("telescope.sorters").get_fuzzy_file,
			file_ignore_patterns = {},
			generic_sorter = require("telescope.sorters").get_generic_fuzzy_sorter,
			winblend = 0,
			border = {},
			borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
			color_devicons = true,
			use_less = true,
			-- path_display = { "shorten" },
			set_env = { ["COLORTERM"] = "truecolor" }, -- default = nil,
			file_previewer = require("telescope.previewers").vim_buffer_cat.new,
			grep_previewer = require("telescope.previewers").vim_buffer_vimgrep.new,
			qflist_previewer = require("telescope.previewers").vim_buffer_qflist.new,
			buffer_previewer_maker = require("telescope.previewers").buffer_previewer_maker,
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
					["<CR>"] = actions.select_default + actions.center,

					-- You can perform as many actions in a row as you like
					-- ["<CR>"] = actions.select_default + actions.center + my_cool_custom_action,
				},
				n = {
					["<C-j>"] = actions.move_selection_next,
					["<C-k>"] = actions.move_selection_previous,
					["<C-q>"] = actions.smart_send_to_qflist + actions.open_qflist,
					-- ["<C-i>"] = my_cool_custom_action,
				},
			},
			extensions = {
				media_files = {
					filetypes = { "png", "webp", "jpg", "jpeg" },
					find_cmd = "rg", -- find command (defaults to `fd`)
				},
				-- fzy_native = {override_generic_sorter = true, override_file_sorter = true},
				lsp_handlers = {
					location = { telescope = {}, no_results_message = "No references found" },
					symbol = { telescope = {}, no_results_message = "No symbols found" },
					call_hierarchy = { telescope = {}, no_results_message = "No calls found" },
					disable = { ["textDocument/codeAction"] = true },
				},
				project = {},
				fzf_writer = {
					minimum_grep_characters = 1,
					minimum_files_characters = 1,

					-- Disabled by default.
					-- Will probably slow down some aspects of the sorter, but can make color highlights.
					-- I will work on this more later.
					use_highlighter = true,
				},
				fzf = {
					override_generic_sorter = true, -- override the generic sorter
					override_file_sorter = true, -- override the file sorter
					case_mode = "smart_case", -- or "ignore_case" or "respect_case"
					-- the default case_mode is "smart_case"
				},
			},
		},
	})

	local todo = { keywords = { "TODO", "FIXME", "XXX" } }
	require("telescope").load_extension("fzf")
	require("telescope").load_extension("media_files")
	require("telescope").load_extension("project")
	require("telescope").load_extension("node_modules")
	require("telescope").load_extension("lsp_handlers")
	require("telescope").load_extension("flutter")

	local opt = { noremap = true, silent = true }

	vim.api.nvim_set_keymap("n", "<M-p>", [[<Cmd>lua require('telescope').extensions.fzf_writer.files()<CR>]], opt)
	-- vim.api.nvim_set_keymap("n", "<M-1>", [[<Cmd>TodoTelescope<CR>]], opt)
	vim.api.nvim_set_keymap(
		"n",
		"<M-1>",
		':lua require("telescope.builtin").grep_string { search = "' .. table.concat(todo.keywords, "|") .. '" }<CR>',
		opt
	)
	vim.api.nvim_set_keymap("n", "<M-2>", [[<Cmd>Telescope<CR>]], opt)
	vim.api.nvim_set_keymap("n", "<M-3>", [[<Cmd>Telescope lsp_dynamic_workspace_symbols<CR>]], opt)
	vim.api.nvim_set_keymap("n", "<M-4>", [[<Cmd>Telescope file_browser<CR>]], opt)
	-- vim.api.nvim_set_keymap("n", "<M-\\>", [[<Cmd>Telescope live_grep<CR>]], opt)
	-- vim.api.nvim_set_keymap("n", "<M-\\>", [[<Cmd>lua require('telescope').extensions.fzf_writer.staged_grep()<CR>]], opt)
	vim.api.nvim_set_keymap("n", "<M-\\>", [[<Cmd>lua require('telescope').extensions.fzf_writer.grep()<CR>]], opt)
	-- vim.api.nvim_set_keymap("n", "<leader>\\", [[<Cmd>lua require('telescope').extensions.fzf_writer.grep()<CR>]], opt)

	vim.api.nvim_set_keymap(
		"n",
		"<leader>p",
		":lua require'telescope'.extensions.project.project{}<CR>",
		{ noremap = true, silent = true }
	)
end

return M
