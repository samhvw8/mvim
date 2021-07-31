CONFIG_PATH = vim.fn.stdpath("config")
DATA_PATH = vim.fn.stdpath("data")
CACHE_PATH = vim.fn.stdpath("cache")
TERMINAL = vim.fn.expand("$TERMINAL")
USER = vim.fn.expand("$USER")

O = {
	leader_key = "space",
	colorscheme = "dracula",
	line_wrap_cursor_movement = true,
	transparent_window = false,
	format_on_save = true,
	vsnip_dir = vim.fn.stdpath("config") .. "/snippets",

	default_options = {
		backup = false, -- creates a backup file
		clipboard = "unnamedplus", -- allows neovim to access the system clipboard
		cmdheight = 2, -- more space in the neovim command line for displaying messages
		colorcolumn = "99999", -- fixes indentline for now
		completeopt = { "menuone", "noselect" },
		conceallevel = 0, -- so that `` is visible in markdown files
		fileencoding = "utf-8", -- the encoding written to a file
		foldmethod = "manual", -- folding, set to "expr" for treesitter based foloding
		foldexpr = "", -- set to "nvim_treesitter#foldexpr()" for treesitter based folding
		guifont = "FiraCode Nerd Font:h17", -- the font used in graphical neovim applications
		hidden = true, -- required to keep multiple buffers and open multiple buffers
		hlsearch = true, -- highlight all matches on previous search pattern
		ignorecase = true, -- ignore case in search patterns
		mouse = "a", -- allow the mouse to be used in neovim
		pumheight = 10, -- pop up menu height
		showmode = false, -- we don't need to see things like -- INSERT -- anymore
		showtabline = 2, -- always show tabs
		smartcase = true, -- smart case
		smartindent = true, -- make indenting smarter again
		splitbelow = true, -- force all horizontal splits to go below current window
		splitright = true, -- force all vertical splits to go to the right of current window
		swapfile = false, -- creates a swapfile
		termguicolors = true, -- set term gui colors (most terminals support this)
		timeoutlen = 100, -- time to wait for a mapped sequence to complete (in milliseconds)
		title = true, -- set the title of window to the value of the titlestring
		-- opt.titlestring = "%<%F%=%l/%L - nvim" -- what the title of the window will be set to
		undodir = CACHE_PATH .. "/undo", -- set an undo directory
		undofile = true, -- enable persisten undo
		updatetime = 300, -- faster completion
		writebackup = false, -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
		expandtab = true, -- convert tabs to spaces
		shiftwidth = 2, -- the number of spaces inserted for each indentation
		tabstop = 2, -- insert 2 spaces for a tab
		cursorline = true, -- highlight the current line
		number = true, -- set numbered lines
		relativenumber = false, -- set relative numbered lines
		numberwidth = 4, -- set number column width to 2 {default 4}
		signcolumn = "yes", -- always show the sign column, otherwise it would shift the text each time
		wrap = false, -- display lines as one long line
		spell = false,
		spelllang = "en",
		scrolloff = 8, -- is one of my fav
		sidescrolloff = 8,
	},

	lsp = {
		diagnostics = {
			virtual_text = { prefix = "", spacing = 0 },
			signs = true,
			underline = true,
			document_highlight = true,
			popup_border = "single",
		},
	},

	disabled_built_ins = {
		"netrw",
		"netrwPlugin",
		"netrwSettings",
		"netrwFileHandlers",
		"gzip",
		"zip",
		"zipPlugin",
		"tar",
		"tarPlugin",
		"getscript",
		"getscriptPlugin",
		"vimball",
		"vimballPlugin",
		"2html_plugin",
		"logipat",
		"rrhelper",
		"spellfile_plugin",
		-- 'matchit', 'matchparen', 'shada_plugin',
	},

	plugin = {},

	-- TODO: refactor for tree
	auto_close_tree = 0,
	nvim_tree_disable_netrw = 0,

	database = { save_location = "~/.config/lunarvim_db", auto_execute = 1 },

	-- TODO: just using mappings (leader mappings)
	user_which_key = {},

	user_plugins = {
		-- use lv-config.lua for this not put here
	},

	user_autocommands = { { "FileType", "qf", "set nobuflisted" } },

	formatters = { filetype = {} },

	lang = {
		cmake = {},
		clang = {
			diagnostics = { virtual_text = { spacing = 0, prefix = "" }, signs = true, underline = true },
			cross_file_rename = true,
			header_insertion = "never",
		},
		css = { virtual_text = true },
		dart = { sdk_path = "/usr/lib/dart/bin/snapshots/analysis_server.dart.snapshot" },
		docker = {},
		efm = {},
		elm = {},
		emmet = { active = true },
		elixir = {},
		graphql = {},
		go = {},
		html = {},
		java = {},
		json = { diagnostics = { virtual_text = { spacing = 0, prefix = "" }, signs = true, underline = true } },
		kotlin = {},
		latex = {},
		lua = { diagnostics = { virtual_text = { spacing = 0, prefix = "" }, signs = true, underline = true } },
		php = {
			format = { format = { default = "psr12" } },
			environment = { php_version = "7.4" },
			diagnostics = { virtual_text = { spacing = 0, prefix = "" }, signs = true, underline = true },
			filetypes = { "php", "phtml" },
		},
		python = {
			linter = "",
			isort = false,
			diagnostics = { virtual_text = { spacing = 0, prefix = "" }, signs = true, underline = true },
			analysis = { type_checking = "basic", auto_search_paths = true, use_library_code_types = true },
		},
		ruby = {
			diagnostics = { virtualtext = { spacing = 0, prefix = "" }, signs = true, underline = true },
			filetypes = { "rb", "erb", "rakefile", "ruby" },
		},
		rust = {
			rust_tools = {
				active = false,
				parameter_hints_prefix = "<-",
				other_hints_prefix = "=>", -- prefix for all the other hints (type, chaining)
			},
			linter = "",
			diagnostics = { virtual_text = { spacing = 0, prefix = "" }, signs = true, underline = true },
		},
		sh = {
			-- @usage can be 'shellcheck'
			linter = "shellcheck",
			-- @usage can be 'shfmt'
			diagnostics = { virtual_text = { spacing = 0, prefix = "" }, signs = true, underline = true },
		},
		svelte = {},
		terraform = {},
		tailwindcss = {
			active = false,
			filetypes = {
				"html",
				"css",
				"scss",
				"javascript",
				"javascriptreact",
				"typescript",
				"typescriptreact",
			},
		},
		tsserver = {
			-- @usage can be 'eslint' or 'eslint_d'
			linter = "",
			diagnostics = {
				virtual_text = { spacing = 0, prefix = "" },
				signs = true,
				underline = true,
			},
			formatter = {
				exe = "prettier",
				args = {},
			},
		},
		vim = {},
		yaml = {},
		-- css = {formatter = '', autoformat = false, virtual_text = true},
		-- json = {formatter = '', autoformat = false, virtual_text = true}
	},
}

require("core.status_colors")
require("core.gitsign").config()

require("lang.clang").config()
require("lang.cmake").config()
require("lang.css").config()
require("lang.dart").config()
require("lang.dockerfile").config()
require("lang.elixir").config()
require("lang.elm").config()
require("lang.go").config()
require("lang.graphql").config()
require("lang.html").config()
require("lang.java").config()
require("lang.json").config()
require("lang.kotlin").config()
require("lang.lua").config()
require("lang.php").config()
require("lang.python").config()
require("lang.ruby").config()
require("lang.rust").config()
require("lang.sh").config()
require("lang.terraform").config()
require("lang.tex").config()
require("lang.vim").config()
require("lang.yaml").config()
