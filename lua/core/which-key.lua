local M = {}
M.config = function()
	O.plugin.which_key = {
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
					enabled = true, -- enabling this will show WhichKey when pressing z= to select spelling suggestions
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
			["o"] = { ":Telescope buffers<CR>", "List Buffer" },
			a = { "<cmd>Lspsaga code_action<cr>", "Code Action" },
			u = { "<cmd>UndotreeToggle<cr>", "Undo tree" },
			f = { "<cmd>lua require('telescope').extensions.flutter.commands()<cr>", "Flutter Tools" },

			["c"] = { "<cmd>Telescope commands<cr>", "Command" },
			["p"] = "List all projects",

			t = {
				a = { "<cmd>lua require('telescope').extensions.asynctasks.all()<cr>", "tasks" },
				c = { "<cmd>tabclose<cr>", "Tab close" },
			},

			d = {
				b = { "<cmd>DebugToggleBreakpoint<cr>", "Toggle Breakpoint" },
				c = { "<cmd>DebugContinue<cr>", "Continue" },
				i = { "<cmd>DebugStepInto<cr>", "Step Into" },
				o = { "<cmd>DebugStepOver<cr>", "Step Over" },
				r = { "<cmd>DebugToggleRepl<cr>", "Toggle Repl" },
				s = { "<cmd>DebugStart<cr>", "Start" },
				v = { "<cmd>DiffviewOpen", "DiffviewOpen" },
				g = "Document generate",
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
				A = { "<cmd>Lspsaga range_code_action<cr>", "Selected Action" },
				d = { "<cmd>Telescope lsp_document_diagnostics<cr>", "Document Diagnostics" },
				D = { "<cmd>Telescope lsp_workspace_diagnostics<cr>", "Workspace Diagnostics" },
				i = { "<cmd>LspInfo<cr>", "Info" },
				q = { "<cmd>Telescope quickfix<cr>", "Quickfix" },
				r = { "<cmd>Lspsaga rename<cr>", "Rename" },
				x = { "<cmd>cclose<cr>", "Close Quickfix" },
				s = { "<cmd>Telescope lsp_document_symbols<cr>", "Document Symbols" },
				S = { "<cmd>Telescope lsp_workspace_symbols<cr>", "Workspace Symbols" },
			},

			s = {
				name = "+Search",
				s = { "<plug>(esearch)", "Search essearch" },
				c = { "<cmd>Telescope colorscheme<cr>", "Colorscheme" },
				m = { "<cmd>Telescope marks<cr>", "Marks" },
				w = { "<cmd>Telescope grep_string<cr>", "Search current word" },
				M = { "<cmd>Telescope man_pages<cr>", "Man Pages" },
				r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
				R = { "<cmd>Telescope registers<cr>", "Registers" },
				t = { "<cmd>Telescope live_grep<cr>", "Text" },
				n = { "<cmd>Telescope node_modules list<cr>", "Node modules" },
			},

			g = {
				name = "+Git",
				b = { "<cmd>Telescope git_branches<cr>", "Git Branch" },
				g = { "<cmd>Neogit<cr>", "Neogit" },
				d = { "<cmd>Telescope git_status<cr>", "Git Status" },
				["1"] = { "<cmd>GitBlameToggle<cr>", "Git blame" },
				c = { "<cmd>Telescope git_commits<cr>", "Checkout commit" },
				C = { "<cmd>Telescope git_bcommits<cr>", "Checkout commit(for current file)" },
			},

			T = { name = "Treesitter", i = { ":TSConfigInfo<cr>", "Info" } },
		},
	}
end

M.setup = function()
	local status_ok, which_key = pcall(require, "which-key")
	if not status_ok then
		return
	end

	which_key.setup(O.plugin.which_key.setup)

	local opts = O.plugin.which_key.opts
	local vopts = O.plugin.which_key.vopts

	local mappings = O.plugin.which_key.mappings
	local vmappings = O.plugin.which_key.vmappings

	local wk = require("which-key")

	wk.register(mappings, opts)
	wk.register(vmappings, vopts)
	wk.register(O.user_which_key, opts)
end

return M
