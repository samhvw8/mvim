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

local function isMac()
	local os_name = fn.system("uname"):gsub("\n", "")
	if os_name == "Darwin" then
		return true
	end
	return false
end

vim.cmd("autocmd BufWritePost plugins.lua PackerCompile") -- Auto compile when there are changes in plugins.lua

return require("packer").startup({
	function(use)
		-- Packer can manage itself as an optional plugin
		use("wbthomason/packer.nvim")

		-- lsp
		use({ "neovim/nvim-lspconfig" })

		use({
			"kabouzeid/nvim-lspinstall",
			config = function()
				require("lspinstall").setup()
			end,
		})

		use({ "skywind3000/asynctasks.vim" })
		use({ "skywind3000/asyncrun.vim" })

		use({ "nvim-lua/popup.nvim" })
		use({ "nvim-lua/plenary.nvim" })

		-- Autocomplete
		use({ "rafamadriz/friendly-snippets" })
		use({ "hrsh7th/vim-vsnip" })
		use({
			"hrsh7th/nvim-compe",
		})
		use({
			"glepnir/lspsaga.nvim",
			config = function()
				local saga = require("lspsaga")
				local opts = { debug = true }
				saga.init_lsp_saga(opts)
			end,
		})
		use({ "Gavinok/compe-look" })

		-- Telescope
		use({ "nvim-telescope/telescope.nvim" })
		use("nvim-telescope/telescope-media-files.nvim")
		use("nvim-telescope/telescope-project.nvim")
		use({ "nvim-telescope/telescope-node-modules.nvim" })
		-- use {"nvim-telescope/telescope-fzy-native.nvim"}
		use({ "gbrlsnchs/telescope-lsp-handlers.nvim" })
		use("GustavoKatel/telescope-asynctasks.nvim")
		use("nvim-telescope/telescope-fzf-writer.nvim")
		use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })

		-- Treesitter
		use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
		use("nvim-treesitter/nvim-treesitter-textobjects")
		use("nvim-treesitter/nvim-treesitter-refactor")
		use({ "nvim-treesitter/playground" })
		use({ "windwp/nvim-ts-autotag" }) -- ts auto tag
		use({ "JoosepAlviste/nvim-ts-context-commentstring" })

		-- use 'nvim-telescope/telescope-dap.nvim'

		use({
			"onsails/lspkind-nvim",
			config = function()
				require("lspkind").init({
					with_text = true,
					symbol_map = {
						Text = "",
						Method = "ƒ",
						Function = "",
						Constructor = "",
						Variable = "",
						Class = "",
						Interface = "ﰮ",
						Module = "",
						Property = "",
						Unit = "",
						Value = "",
						Enum = "了",
						Keyword = "",
						Snippet = "﬌",
						Color = "",
						File = "",
						Folder = "",
						EnumMember = "",
						Constant = "",
						Struct = "",
					},
				})
			end,
		})
		use({ "ray-x/lsp_signature.nvim" })
		use({ "nvim-lua/lsp-status.nvim" })
		-- use({ "jose-elias-alvarez/nvim-lsp-ts-utils" })

		-- -- Debugging
		-- use({ "mfussenegger/nvim-dap" })
		-- use({ "theHamsta/nvim-dap-virtual-text", after = "nvim-dap" })
		-- use({ "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap" }, after = "nvim-dap" })
		-- use("Pocco81/DAPInstall.nvim")

		use({
			"kevinhwang91/rnvimr",
			config = function()
				vim.g.rnvimr_enable_ex = 1
				vim.g.rnvimr_draw_border = 1
				vim.g.rnvimr_pick_enable = 1
				vim.g.rnvimr_bw_enable = 1
				vim.api.nvim_set_keymap("n", "-", ":RnvimrToggle<CR>", { noremap = true, silent = true })
			end,
		})

		-- Formatter.nvim
		use({
			"mhartington/formatter.nvim",
			config = function()
				require("core.formatter")
			end,
		})

		-- Linter
		use({
			"mfussenegger/nvim-lint",
			config = function()
				require("core.linter").setup()
			end,
		})

		-- solidity
		use("TovarishFin/vim-solidity")

		-- Explorer
		use({
			"kyazdani42/nvim-tree.lua",
			-- cmd = "NvimTreeToggle",
			config = function()
				require("core.nvimtree")
			end,
		})

		-- Git
		use({
			"lewis6991/gitsigns.nvim",
			config = function()
				require("core.gitsign").setup()
			end,
		})
		use({
			"TimUntersberger/neogit",
			requires = "nvim-lua/plenary.nvim",
			config = function()
				require("neogit").setup({ integrations = { diffview = true } })
			end,
		})
		use({
			"f-person/git-blame.nvim",
		})
		use({ "kdheepak/lazygit.nvim", cmd = "LazyGit" })
		use({
			"sindrets/diffview.nvim",
			config = function()
				require("core.diffview")
			end,
		})

		use({ "folke/which-key.nvim" })

		use({ "glepnir/dashboard-nvim" })

		use({
			"windwp/nvim-autopairs",
		})

		-- Comments
		use({
			"terrortylor/nvim-comment",
			cmd = "CommentToggle",
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
		})
		use({
			"romgrk/barbar.nvim",
			config = function()
				require("core.barbar")
			end,
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

		use({
			"eugen0329/vim-esearch",
			config = function()
				-- vim.api.nvim_set_keymap('n', '<m-s>', '<plug>(esearch)', {silent = true})
				vim.api.nvim_set_keymap("", "<m-s>", "<plug>(operator-esearch-prefill)", { silent = true })

				vim.g.esearch = {
					regex = 1,
					textobj = 0,
					case = "smart",
					prefill = { "hlsearch", "last", "clipboard" },
					root_markers = { ".git", "Makefile", "node_modules" },
					default_mappings = 1,
					live_update = 0,
					name = "[esearch]",
				}
			end,
		}) -- replace CocSearch

		-- tpope -- TODO: replace with lua
		use("tpope/vim-abolish")
		use("tpope/vim-repeat")
		use("tpope/vim-unimpaired")

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
			"blackCauldron7/surround.nvim",
			config = function()
				require("surround").setup({ mappings_style = "surround" })
			end,
		})

		-- color
		use({
			"norcalli/nvim-colorizer.lua",
			config = function()
				require("colorizer").setup()
				-- vim.cmd("ColorizerReloadAllBuffers")
			end,
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
					"help",
					"startify",
					"dashboard",
					"packer",
					"neogitstatus",
					"NvimTree",
				}
				vim.g.indent_blankline_show_current_context = true
			end,
		})

		use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", ft = "markdown" })

		use("dstein64/vim-startuptime")

		if isMac() then
			use("/usr/local/opt/fzf")
		else
			use({ "junegunn/fzf", dir = "~/.fzf", run = "./install --all" })
		end
		use("junegunn/fzf.vim")
		use("vijaymarupudi/nvim-fzf")

		-- -- SQL
		-- use({ "tpope/vim-dadbod", requires = { "kristijanhusak/vim-dadbod-completion", "kristijanhusak/vim-dadbod-ui" } })

		-- docs

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

		use({ "akinsho/flutter-tools.nvim", requires = "nvim-lua/plenary.nvim" })

		use("gennaro-tedesco/nvim-jqx")

		use({ "haringsrob/nvim_context_vt" })

		use({ "gabrielpoca/replacer.nvim" })

		use({ "neo4j-contrib/cypher-vim-syntax" })

		-- fix gx open command in vim
		use({ "felipec/vim-sanegx" })

		-- use({
		-- 	"jose-elias-alvarez/null-ls.nvim",
		-- 	ft = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx" },
		-- 	config = function()
		-- 		require("null-ls").setup()
		-- 	end,
		-- })
	end,
})
