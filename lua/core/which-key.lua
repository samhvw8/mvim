local M = {}

M.setup = function()
	local status_ok, which_key = pcall(require, "which-key")
	if not status_ok then
		return
	end

	local which_key_config = {
		setup = {
			plugins = {
				marks = true, -- shows a list of your marks on ' and `
				registers = true, -- shows your registers on " in NORMAL or <C-r> in INSERT mode,
				-- the presets plugin, adds help for a bunch of default keybindings in Neovim
				-- No actual key bindings are created
				presets = {
					operators = false, -- adds help for operators like d, y, ...
					motions = false, -- adds help for motions
					text_objects = false, -- help for text objects triggered after entering an operator
					windows = true, -- default bindings on <c-w>
					nav = true, -- misc bindings to work with windows
					z = true, -- bindings for folds, spelling and others prefixed with z
					g = false, -- bindings for prefixed with g
				},
				spelling = {
					enabled = false, -- enabling this will show WhichKey when pressing z= to select spelling suggestions
					suggestions = 20, -- how many suggestions should be shown in the list?
				},
			},
			icons = {
				breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
				separator = "➜", -- symbol used between a key and it's label
				group = "+", -- symbol prepended to a group
			},
			window = {
				border = "single", -- none, single, double, shadow
				position = "bottom", -- bottom, top
				margin = { 1, 0, 1, 0 }, -- extra window margin [top, right, bottom, left]
				padding = { 2, 2, 2, 2 }, -- extra window padding [top, right, bottom, left]
			},
			layout = {
				height = { min = 4, max = 25 }, -- min and max height of the columns
				width = { min = 20, max = 50 }, -- min and max width of the columns
				spacing = 3, -- spacing between columns
			},
			hidden = { "<silent>", "<cmd>", "<Cmd>", "<CR>", "call", "lua", "^:", "^ " }, -- hide mapping boilerplate
			show_help = true, -- show help message on the command line when the popup is visible
		},

		opts = {
			mode = "n", -- NORMAL mode
			prefix = "<leader>",
			buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
			silent = true, -- use `silent` when creating keymaps
			noremap = true, -- use `noremap` when creating keymaps
			nowait = true, -- use `nowait` when creating keymaps
		},
		vopts = {
			mode = "v", -- VISUAL mode
			prefix = "<leader>",
			buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
			silent = true, -- use `silent` when creating keymaps
			noremap = true, -- use `noremap` when creating keymaps
			nowait = true, -- use `nowait` when creating keymaps
		},
		-- NOTE: Prefer using : over <cmd> as the latter avoids going back in normal-mode.
		-- see https://neovim.io/doc/user/map.html#:map-cmd
		vmappings = { ["/"] = { ":CommentToggle<CR>", "Comment" } },
		mappings = {
			["w"] = { "<cmd>update!<CR>", "Update buffer" },
			["W"] = { "<cmd>update!<CR>", "Update buffer without autocommand" },
			["/"] = { "<cmd>CommentToggle<CR>", "Comment" },
			["e"] = { "<cmd>lua require'core.nvimtree'.toggle_tree()<CR>", "Explorer" },
			["4"] = { "<cmd>lua require('replacer').run()<cr>" },
			[";"] = { "<cmd>Dashboard<CR>", "dashboard" },
			
			-- ["h"] = {'<cmd>let @/=""<CR>', "No Highlight"},
			["o"] = { ":lua require('fzf-lua').buffers()<CR>", "List Buffer" },
			a = { "<Plug>(coc-codeaction)", "Code Action" },
			u = { "<cmd>UndotreeToggle<cr>", "Undo tree" },

			["c"] = { "<cmd>CocFzfList commands<cr>", "Command" },

			t = {
				c = { "<cmd>tabclose<cr>", "Tab close" },
			},

			b = {
				name = "+Buffers",
				p = { "<cmd>BufferPick<cr>", "Buffer Pick" },
				o = { "<cmd>BufferCloseAllButCurrent<cr>", "Buffer Only" },
				D = { "<cmd>BufferOrderByDirectory<cr>", "sort BufferLines automatically by directory" },
				L = { "<cmd>BufferOrderByLanguage<cr>", "sort BufferLines automatically by language" },
			},

			h = {
				name = "+GitHunk",
				p = { "<cmd>lua require 'gitsigns'.preview_hunk()<cr>", "Preview Hunk" },
				r = { "<cmd>lua require 'gitsigns'.reset_hunk()<cr>", "Reset Hunk" },
				R = { "<cmd>lua require 'gitsigns'.reset_buffer()<cr>", "Reset Buffer" },
				s = { "<cmd>lua require 'gitsigns'.stage_hunk()<cr>", "Stage Hunk" },
				u = { "<cmd>lua require 'gitsigns'.undo_stage_hunk()<cr>", "Undo Stage Hunk" },
			},

			l = {
				name = "+LSP",
				a = { "<cmd>CocFzfList actions<cr>", "Action" },
				d = { "<cmd>CocFzfList diagnostics --current-buf<cr>", "Document Diagnostics" },
				D = { "<cmd>CocFzfList diagnostics<cr>", "Workspace Diagnostics" },
				q = { "<cmd>lua require('fzf-lua').quickfix<cr>", "Quickfix" },
				r = { "<Plug>(coc-rename)", "Rename" },
				f = { "<Plug>(coc-rename)", "refactor" },
				x = { "<cmd>cclose<cr>", "Close Quickfix" },
				-- s = { "<cmd>Telescope lsp_document_symbols<cr>", "Document Symbols" },
			},

			s = {
				name = "+Search",
				c = { "<cmd>lua require('fzf-lua').colorschemes()<cr>", "Colorscheme" },
				m = { "<cmd>Marks<cr>", "Marks" },
				w = { "<cmd>lua require('fzf-lua').grep_cWORD()<cr>", "Search current word" },
				M = { "<cmd>lua require('fzf-lua').man_pages<cr>", "Man Pages" },
				r = { "<cmd>lua require('fzf-lua').oldfiles<cr>", "Open Recent File" },
				t = { "<cmd>lua require('fzf-lua').live_grep<cr>", "Text" },
			},

			g = {
				name = "+Git",
				g = { "<cmd>Neogit<cr>", "Neogit" },
				d = { "<cmd>GFiles?<cr>", "Git Status" },
				["1"] = { "<cmd>GitBlameToggle<cr>", "Git blame" }
			},

			T = { name = "Treesitter", i = { ":TSConfigInfo<cr>", "Info" } },
		},
	}

	which_key.setup(which_key_config.setup)

	local opts = which_key_config.opts
	local vopts = which_key_config.vopts

	local mappings = which_key_config.mappings
	local vmappings = which_key_config.vmappings
	
	which_key.register(mappings, opts)
	which_key.register(vmappings, vopts)

	local opt = {silent = true}

	vim.api.nvim_set_keymap("n", "<M-p>", "<Cmd>lua require('fzf-lua').files()<CR>", opt)

	vim.g.tasks_anotation_list = {'TODO', 'FIXME', 'XXX'}
	vim.cmd([[command! -nargs=0 TODO execute "Rg (" . join(g:tasks_anotation_list, "|") . ")"]])

	vim.api.nvim_set_keymap(
		"n",
		"<M-1>",
		'<CMD>TODO<CR>',
		opt
	)

	vim.api.nvim_set_keymap("n", "<M-2>", [[<Cmd>CocFzfList symbols<CR>]], opt)
	vim.api.nvim_set_keymap("n", "<M-3>", [[<Cmd>CocFzfList<CR>]], opt)
	vim.api.nvim_set_keymap("n", "<M-3>", [[<Cmd>lua require('fzf-lua').builtin()<CR>]], opt)
	vim.api.nvim_set_keymap("n", "<M-\\>", [[<Cmd>lua require('fzf-lua').live_grep()<CR>]], opt)

end

return M
