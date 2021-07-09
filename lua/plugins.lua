local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
    execute("!git clone https://github.com/wbthomason/packer.nvim " .. install_path)
    execute "packadd packer.nvim"
end

local packer_ok, packer = pcall(require, "packer")
if not packer_ok then return end

packer.init {
    -- compile_path = vim.fn.stdpath('data')..'/site/pack/loader/start/packer.nvim/plugin/packer_compiled.vim',
    compile_path = require("packer.util").join_paths(vim.fn.stdpath "config", "plugin", "packer_compiled.lua"),
    git = {clone_timeout = 300},
    display = {open_fn = require('packer.util').float},
    max_jobs = 10
}

local function isMac()
    local os_name = fn.system('uname'):gsub("\n", "")
    if os_name == 'Darwin' then return true end
    return false
end

vim.cmd "autocmd BufWritePost plugins.lua PackerCompile" -- Auto compile when there are changes in plugins.lua

return require("packer").startup({
    function(use)
        -- Packer can manage itself as an optional plugin
        use "wbthomason/packer.nvim"

        -- lsp
        use {"neovim/nvim-lspconfig"}
        use {"glepnir/lspsaga.nvim"}
        use {"kabouzeid/nvim-lspinstall", cmd = "LspInstall"}

        use {'skywind3000/asynctasks.vim'}
        use {'skywind3000/asyncrun.vim'}

        -- Telescope
        use {"nvim-lua/popup.nvim"}
        use {"nvim-lua/plenary.nvim"}
        use {"tjdevries/astronauta.nvim"}
        use {
            "nvim-telescope/telescope.nvim",
        }
        use "nvim-telescope/telescope-media-files.nvim"
        use {"nvim-telescope/telescope-project.nvim"}
        use {"nvim-telescope/telescope-node-modules.nvim"}
        -- use {"nvim-telescope/telescope-fzy-native.nvim", event = "BufRead", after = "telescope.nvim"}
        use {'gbrlsnchs/telescope-lsp-handlers.nvim'}
        use {"GustavoKatel/telescope-asynctasks.nvim"}
        use {"nvim-telescope/telescope-fzf-writer.nvim"}
        use {'nvim-telescope/telescope-fzf-native.nvim'}

        -- Debugging
        use {"mfussenegger/nvim-dap", event = "BufRead"}
        use {'theHamsta/nvim-dap-virtual-text', event = "BufRead", after = "nvim-dap"}
        use {"rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"}, event = "BufRead", after = "nvim-dap"}
        use "Pocco81/DAPInstall.nvim"
        -- use 'nvim-telescope/telescope-dap.nvim'

        -- Autocomplete
        use {
            "hrsh7th/nvim-compe",
            event = "InsertEnter",
            config = function()
                require("gv-compe")
            end
        }
        use {'Gavinok/compe-look', after = "nvim-compe"}

        use {"rafamadriz/friendly-snippets"}
        use {"hrsh7th/vim-vsnip"}

        use {'onsails/lspkind-nvim'}
        use {"ray-x/lsp_signature.nvim"}
        use {"nvim-lua/lsp-status.nvim"}
        use {"jose-elias-alvarez/nvim-lsp-ts-utils"}

        -- Treesitte
        use {"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"}
        use 'nvim-treesitter/nvim-treesitter-textobjects'
        use 'nvim-treesitter/nvim-treesitter-refactor'
        use {"nvim-treesitter/playground", event = "BufRead"}
        use {"windwp/nvim-ts-autotag"} -- ts auto tag
        use {"JoosepAlviste/nvim-ts-context-commentstring", event = "BufRead"}

        -- solidity
        use 'TovarishFin/vim-solidity'

        -- Explorer
        use {
            "kyazdani42/nvim-tree.lua",
            -- cmd = "NvimTreeToggle",
            config = function()
                require("gv-nvimtree")
            end
        }

        use {
            "kevinhwang91/rnvimr",
            config = function()
                require("gv-rnvimr")
            end
        }

        -- Git
        use {
            "lewis6991/gitsigns.nvim",
            config = function()
                require("gv-git")
            end,
            event = "BufRead"
        }
        use {
            'TimUntersberger/neogit',
            requires = 'nvim-lua/plenary.nvim',
            config = function()
                require('neogit').setup {integrations = {diffview = true}}
            end
        }
        use {
            "f-person/git-blame.nvim",
            event = "BufRead",
            config = function()
                vim.cmd('highlight default link gitblame SpecialComment')
                vim.g.gitblame_enabled = 0
                vim.g.gitblame_message_template = '<summary> • <date> • <author>'
            end
        }
        use {"kdheepak/lazygit.nvim", cmd = "LazyGit"}
        use {
            'sindrets/diffview.nvim',
            event = "BufRead",
            config = function()
                require('gv-diffview')
            end
        }

        use {"folke/which-key.nvim"}

        use {"glepnir/dashboard-nvim"}

        use {
            "windwp/nvim-autopairs",
            event = "InsertEnter",
            after = {"telescope.nvim", "nvim-compe"},
            config = function()
                require "gv-autopairs"
            end
        }

        -- Comments
        use {
            "terrortylor/nvim-comment",
            cmd = "CommentToggle",
            config = function()
                require("gv-comment")
            end
        }
        use {
            "kevinhwang91/nvim-bqf",
            event = "BufRead",
            config = function()
                require('gv-bqf')
            end
        }

        -- Icons
        use {
            "kyazdani42/nvim-web-devicons",
            config = function()
                require'nvim-web-devicons'
            end
        }

        -- Status Line and Bufferline
        use {
            "glepnir/galaxyline.nvim",
            config = function()
                require "gv-galaxyline"
            end
        }
        use {
            "romgrk/barbar.nvim",
            config = function()
                require('gv-barbar')
            end
        }

        -- for text object
        use {"wellle/targets.vim"}
        use {
            "andymass/vim-matchup",
            event = "CursorMoved",
            config = function()
                require("gv-matchup")
            end
        }

        -- search related
        use {'haya14busa/vim-asterisk', requires={"nvim-hlslens"}}

        use {
            'kevinhwang91/nvim-hlslens',
            config = function()
                require('gv-nvim-hlslens')
            end
        }

        use {
            'eugen0329/vim-esearch',
            event = "BufRead",
            config = function()
                require('gv-esearch')
            end
        } -- replace CocSearch


        -- tpope -- TODO: replace with lua
        use 'tpope/vim-abolish'
        use 'tpope/vim-repeat'
        use 'tpope/vim-unimpaired'
        use {
            'junegunn/vim-easy-align',
            config = function()
                require('gv-easy-align')
            end,
            event = "BufRead"
        }
        -- " use 'tpope/vim-sleuth'

        use {
            'blackCauldron7/surround.nvim',
            config = function()
                require('gv-surround')
            end,
            event = "BufRead"
        }

        -- color
        use {
            "norcalli/nvim-colorizer.lua",
            event = "BufRead",
            config = function()
                require("colorizer").setup()
                vim.cmd "ColorizerReloadAllBuffers"
            end
        }

        -- for note taking
        -- use "oberblastmeister/neuron.nvim"

        use {
            "monaqa/dial.nvim",
            event = "BufRead",
            config = function()
                require("gv-dial")
            end
        }

        use "mbbill/undotree"

        use 'editorconfig/editorconfig-vim'

        -- rsync
        use 'kenn7/vim-arsync'

        use {
            "lukas-reineke/indent-blankline.nvim",
            event = "BufRead",
            config = function()
                require('gv-indent-blankline')
            end
        }

        use {"iamcco/markdown-preview.nvim", run = "cd app && npm install", ft = "markdown"}

        use 'dstein64/vim-startuptime'

        if isMac() then
            use '/usr/local/opt/fzf'
        else
            use {'junegunn/fzf', dir = '~/.fzf', run = './install --all'}
        end
        use 'junegunn/fzf.vim'
        use 'vijaymarupudi/nvim-fzf'

        -- Fast move when :<bumber>
        -- use 'nacro90/numb.nvim'   -- lag ??

        -- SQL
        use {"tpope/vim-dadbod", requires = {"kristijanhusak/vim-dadbod-completion", "kristijanhusak/vim-dadbod-ui"}}

        -- docs

        use {
            'kkoomen/vim-doge',
            run = ":call doge#install()",
            config = function()
                require('gv-doge')
            end
        }

        -- theme
        use {'dracula/vim', as = 'dracula'}

        use {'akinsho/flutter-tools.nvim', requires = 'nvim-lua/plenary.nvim'}

        use 'gennaro-tedesco/nvim-jqx'

        use {"haringsrob/nvim_context_vt"}

        use {'gabrielpoca/replacer.nvim'}

        use {'neo4j-contrib/cypher-vim-syntax'}

        -- use {"folke/todo-comments.nvim"} -- this lag too

        -- fix gx open command in vim
        use {"felipec/vim-sanegx", event = "BufRead"}

        use {
            "jose-elias-alvarez/null-ls.nvim",
            ft = {"javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx"},
            config = function()
                require("null-ls").setup()
            end
        }

    end
})
