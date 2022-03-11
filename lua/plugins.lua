local fn = vim.fn

local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
	vim.execute("!git clone https://github.com/wbthomason/packer.nvim " .. install_path)
	vim.execute("packadd packer.nvim")
end

local packer_ok, packer = pcall(require, "packer")
if not packer_ok then
	return
end

packer.init({
	-- compile_path = vim.fn.stdpath('data')..'/site/pack/loader/start/packer.nvim/plugin/packer_compiled.vim',
	compile_path = require("packer.util").join_paths(vim.fn.stdpath("config"), "plugin", "packer_compiled.lua"),
	git = { clone_timeout = 300 },
	display = { open_fn = require("packer.util").float },
	max_jobs = 5,
})

-- vim.cmd 'source ~/.config/nvim/custom/unimpaired.vim'
if isVscode() then
	vim.cmd("source ~/.config/nvim/custom/vscode.vim")
end

return require("packer").startup({
	function(use)
		-- Packer can manage itself as an optional plugin
		use("wbthomason/packer.nvim")

		use({ "skywind3000/asynctasks.vim" })
		use({ "skywind3000/asyncrun.vim" })

		use({ "nvim-lua/popup.nvim" })
		use({ "nvim-lua/plenary.nvim" })

		-- Treesitter
		use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
		use("nvim-treesitter/nvim-treesitter-textobjects")
		-- use("nvim-treesitter/nvim-treesitter-refactor")
		use({ "nvim-treesitter/playground" })
		use({ "windwp/nvim-ts-autotag", cond = { isNotVscode } }) -- ts auto tag
		use({ "JoosepAlviste/nvim-ts-context-commentstring" })

		-- 		use({
		-- 			"kevinhwang91/rnvimr",
		-- 			config = function()
		-- 				vim.g.rnvimr_enable_ex = 1
		-- 				vim.g.rnvimr_draw_border = 1
		-- 				vim.g.rnvimr_pick_enable = 1
		-- 				vim.g.rnvimr_bw_enable = 1
		-- 				vim.api.nvim_set_keymap("n", "-", ":RnvimrToggle<CR>", { noremap = true, silent = true })
		-- 			end,
		-- 			cond = { isNotVscode },
		-- 		})
		--
		--
		-- Formatter.nvim
		use({
			"mhartington/formatter.nvim",
			config = function()
				require("core.formatter")
			end,
			cond = { isNotVscode },
		})

		-- solidity
		use({ "TovarishFin/vim-solidity", cond = { isNotVscode } })

		-- Explorer
		use({
			"kyazdani42/nvim-tree.lua",
			-- cmd = "NvimTreeToggle",
			config = function()
				require("core.nvimtree")
			end,
			cond = { isNotVscode },
		})

		-- Git
		use({
			"lewis6991/gitsigns.nvim",
			config = function()
				require("core.gitsign").setup()
			end,
			cond = { isNotVscode },
		})
		use({
			"TimUntersberger/neogit",
			requires = "nvim-lua/plenary.nvim",
			config = function()
				require("neogit").setup({ integrations = { diffview = true } })
			end,
			cond = { isNotVscode },
		})
		use({
			"f-person/git-blame.nvim",
			cond = { isNotVscode },
		})
		use({
			"sindrets/diffview.nvim",
			config = function()
				require("core.diffview")
			end,
			cond = { isNotVscode },
		})

		use({
			"folke/which-key.nvim",
			config = function()
				require("core.which-key").setup()
			end,
			cond = { isNotVscode },
		})

		use({ "glepnir/dashboard-nvim", cond = { isNotVscode } })

		use({
			"windwp/nvim-autopairs",
			config = function()
				require("core.autopairs")
			end,
			cond = { isNotVscode },
		})
		-- Comments
		use({
			"terrortylor/nvim-comment",
			config = function()
				require("nvim_comment").setup()
			end,
		})

		use({
			"kevinhwang91/nvim-bqf",
			config = function()
				require("core.bqf")
			end,
		})

		-- Icons
		use({
			"kyazdani42/nvim-web-devicons",
			config = function()
				require("nvim-web-devicons")
			end,
		})

		-- Status Line and Bufferline
		use({
			"glepnir/galaxyline.nvim",
			config = function()
				require("core.galaxyline")
			end,
			cond = { isNotVscode },
		})
		use({
			"romgrk/barbar.nvim",
			config = function()
				require("core.barbar")
			end,
			cond = { isNotVscode },
		})

		-- for text object
		use({ "wellle/targets.vim" })
		use({
			"andymass/vim-matchup",
			config = function()
				vim.g.matchup_matchparen_offscreen = { method = "popup" }
			end,
		})

		-- search related
		use({ "haya14busa/vim-asterisk", after = { "nvim-hlslens" } })

		use({
			"kevinhwang91/nvim-hlslens",
			config = function()
				require("hlslens").setup({ calm_down = true, nearest_only = true, nearest_float_when = "always" })
			end,
		})

		-- use({
		-- 	"eugen0329/vim-esearch",
		-- 	config = function()
		-- 		-- vim.api.nvim_set_keymap('n', '<m-s>', '<plug>(esearch)', {silent = true})
		-- 		vim.api.nvim_set_keymap("", "<m-s>", "<plug>(operator-esearch-prefill)", { silent = true })

		-- 		vim.g.esearch = {
		-- 			regex = 1,
		-- 			textobj = 0,
		-- 			case = "smart",
		-- 			prefill = { "hlsearch", "last", "clipboard" },
		-- 			root_markers = { ".git", "Makefile", "node_modules" },
		-- 			default_mappings = 1,
		-- 			live_update = 0,
		-- 			name = "[esearch]",
		-- 		}
		-- 	end,
		-- 	cond = { isNotVscode }
		-- }) -- replace CocSearch

		-- tpope -- TODO: replace with lua
		use("tpope/vim-abolish")
		use("tpope/vim-repeat")
		use("tpope/vim-unimpaired")
		-- use("vim-scripts/ReplaceWithRegister")

		use({
			"junegunn/vim-easy-align",
			config = function()
				-- Make Ranger replace netrw and be the file explorer
				vim.api.nvim_set_keymap("n", "ga", "<Plug>(EasyAlign)", { noremap = true, silent = true })
				vim.api.nvim_set_keymap("v", "ga", "<Plug>(EasyAlign)", { silent = true })
			end,
		})
		-- " use 'tpope/vim-sleuth'

		use({
			"ur4ltz/surround.nvim",
			config = function()
				require("surround").setup({ mappings_style = "surround" })
			end,
			cond = { isNotVscode },
		})

		use({
			"tpope/vim-surround",
			config = function() end,
			cond = { isVscode },
		})

		-- color
		use({
			"norcalli/nvim-colorizer.lua",
			config = function()
				require("colorizer").setup()
				-- vim.cmd("ColorizerReloadAllBuffers")
			end,
			cond = { isNotVscode },
		})

		-- for note taking
		-- use "oberblastmeister/neuron.nvim"

		use({
			"monaqa/dial.nvim",
			config = function()
				require("core.dial")
			end,
		})

		use("mbbill/undotree")

		use("editorconfig/editorconfig-vim")

		-- rsync
		use("kenn7/vim-arsync")

		use({
			"lukas-reineke/indent-blankline.nvim",
			config = function()
				vim.g.indent_blankline_char_list = { "|", "¦", "┆", "┊" }
				-- vim.g.indent_blankline_char = '┃'
				vim.g.indent_blankline_strict_tabs = true

				vim.g.indent_blankline_show_trailing_blankline_indent = false
				vim.g.indent_blankline_use_treesitter = true
				vim.g.indent_blankline_buftype_exclude = { "terminal" }
				vim.g.indent_blankline_filetype_exclude = {
					"NvimTree",
					"dashboard",
					"help",
					"neogitstatus",
					"packer",
					"startify",
					"defx",
					"diagnosticpopup",
					"gitmessengerpopup",
					"help",
					"lspinfo",
					"man",
					"vimwiki",
				}

				vim.g.indent_blankline_context_patterns = {
					"class",
					"function",
					"method",
					"^if",
					"while",
					"for",
					"with",
					"func_literal",
					"block",
					"try",
					"except",
					"argument_list",
					"object",
					"dictionary",
					"element",
				}

				vim.g.indent_blankline_show_current_context = true
			end,
			cond = { isNotVscode },
		})

		use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", ft = "markdown" })

		use("dstein64/vim-startuptime")

		if isMac() then
			use({ "/usr/local/opt/fzf", cond = { isNotVscode } })
		else
			use({ "junegunn/fzf", dir = "~/.fzf", run = "./install --all", cond = { isNotVscode } })
		end
		use({ "junegunn/fzf.vim", cond = { isNotVscode } })
		use({ "vijaymarupudi/nvim-fzf", cond = { isNotVscode } })

		use({
			"neoclide/coc.nvim",
			branch = "master",
			run = "yarn install --frozen-lockfile",
			config = function()
				require("core.coc")
			end,
			cond = { isNotVscode },
		})

		use({
			"ibhagwan/fzf-lua",
			config = function()
				-- require("core.fzf")
			end,
			requires = { "vijaymarupudi/nvim-fzf", "kyazdani42/nvim-web-devicons" },
			cond = { isNotVscode },
		})

		use({ "antoinemadec/coc-fzf", cond = { isNotVscode } })

		use({
			"kkoomen/vim-doge",
			run = ":call doge#install()",
			config = function()
				-- Make Ranger replace netrw and be the file explorer
				vim.g.doge_enable_mappings = true
				vim.g.doge_mapping = "<leader>dg"
			end,
		})

		-- theme
		use({ "dracula/vim", as = "dracula" })

		use({ "gennaro-tedesco/nvim-jqx", cond = { isNotVscode } })

		use({ "haringsrob/nvim_context_vt", cond = { isNotVscode } })

		use({ "neo4j-contrib/cypher-vim-syntax" })

		-- fix gx open command in vim
		use({ "felipec/vim-sanegx" })
	end,
})
