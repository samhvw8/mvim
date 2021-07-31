local M = {}

M.setup = function()
	local status_ok, treesitter_configs = pcall(require, "nvim-treesitter.configs")
	if not status_ok then
		return
	end

	local custom_captures = {
		["function.call"] = "LuaFunctionCall",
		["function.bracket"] = "Type",
		["namespace.type"] = "TSNamespaceType",
	}

	local treesitter = {
		ensure_installed = "all",
		ignore_install ={ "haskell" },
		highlight = {
			enable = true,
			additional_vim_regex_highlighting = true,
			disable = { "latex" },
			custom_captures = custom_captures,
		},
		indent = { enable = { "javascriptreact" } },
		autotag = { enable = true },
		textobj_prefixes = {
			goto_next = "]", -- Go to next
			goto_previous = "[", -- Go to previous
			inner = "i", -- Select inside
			outer = "a", -- Selct around
			swap = "<leader>a", -- Swap with next
		},
		textobj_suffixes = {
			-- Start and End respectively for the goto keys
			-- for other keys it only uses the first
			["function"] = { "f", "F" },
			["class"] = { "m", "M" },
			["parameter"] = { "a", "A" },
			["block"] = { "k", "K" },
			["conditional"] = { "i", "I" },
			["call"] = { "c", "C" },
			["loop"] = { "l", "L" },
			["statement"] = { "s", "S" },
			["comment"] = { "/", "?" },
		},
		-- The below is for treesitter hint textobjects plugin
		hint_labels = { "h", "j", "f", "d", "n", "v", "s", "l", "a" },
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
						java = "(method_declaration) @function",
					},
				},
			},
			lsp_interop = { enable = true },
		},
		matchup = {
			enable = true, -- mandatory, false will disable the whole extension
			-- disable = {"c", "ruby"} -- optional, list of language that will be disabled
		},
		playground = {
			enable = true,
			disable = {},
			updatetime = 25,
			persist_queries = false,
			keybindings = {
				toggle_query_editor = "o",
				toggle_hl_groups = "i",
				toggle_injected_languages = "t",
				toggle_anonymous_nodes = "a",
				toggle_language_display = "I",
				focus_language = "f",
				unfocus_language = "F",
				update = "R",
				goto_node = "<cr>",
				show_help = "?",
			},
		},
		autopairs = { enable = true },
		context_commentstring = { enable = true },
		refactor = {
			highlight_definitions = { enable = true },
			highlight_current_scope = { enable = false },
			-- smart_rename = {enable = true, keymaps = {smart_rename = "<leader>R"}}
		},
	}

	treesitter_configs.setup(treesitter)
end

return M
