local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
    execute("!git clone https://github.com/wbthomason/packer.nvim " .. install_path)
    execute "packadd packer.nvim"
end

--- Check if a file or directory exists in this path
local function require_plugin(plugin)
    local plugin_prefix = fn.stdpath("data") .. "/site/pack/packer/opt/"

    local plugin_path = plugin_prefix .. plugin .. "/"
    --	print('test '..plugin_path)
    local ok, err, code = os.rename(plugin_path, plugin_path)
    if not ok then
        if code == 13 then
            -- Permission denied, but it exists
            return true
        end
    end
    --	print(ok, err, code)
    if ok then vim.cmd("packadd " .. plugin) end
    return ok, err, code
end

vim.cmd "autocmd BufWritePost plugins.lua PackerCompile" -- Auto compile when there are changes in plugins.lua

return require("packer").startup({
    function(use)
        -- Packer can manage itself as an optional plugin
        use "wbthomason/packer.nvim"

        -- TODO: refactor all of this (for now it works, but yes I know it could be wrapped in a simpler )

        -- lsp
        use {"neovim/nvim-lspconfig"}
        use {"glepnir/lspsaga.nvim"}
        use {"kabouzeid/nvim-lspinstall"}
        use {"nvim-lua/lsp-status.nvim"}

        use {'skywind3000/asynctasks.vim'}
        use {'skywind3000/asyncrun.vim'}

        -- Telescope
        use {"nvim-lua/popup.nvim"}
        use {"nvim-lua/plenary.nvim"}
        use {"nvim-telescope/telescope.nvim"}
        use "nvim-telescope/telescope-media-files.nvim"
        use "nvim-telescope/telescope-project.nvim"
        use {"nvim-telescope/telescope-node-modules.nvim"}
        -- use {"nvim-telescope/telescope-fzy-native.nvim"}
        use {'gbrlsnchs/telescope-lsp-handlers.nvim'}
        use "GustavoKatel/telescope-asynctasks.nvim"
        use "nvim-telescope/telescope-fzf-writer.nvim"
        use {'nvim-telescope/telescope-fzf-native.nvim', run = "make"}

        -- Debugging
        use {"mfussenegger/nvim-dap"}
        use 'theHamsta/nvim-dap-virtual-text'
        use {"rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"}}
        use "Pocco81/DAPInstall.nvim"
        -- use 'nvim-telescope/telescope-dap.nvim'

        -- Autocomplete
        use {"hrsh7th/nvim-compe"}
        use 'Gavinok/compe-look'
        use {"rafamadriz/friendly-snippets"}
        use {"hrsh7th/vim-vsnip"}
        use {'onsails/lspkind-nvim'}
        use {"ray-x/lsp_signature.nvim"}

        -- Treesitte
        use {"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"}
        use 'nvim-treesitter/nvim-treesitter-textobjects'
        use 'nvim-treesitter/nvim-treesitter-refactor'
        use {'nvim-treesitter/playground'} -- playground

        -- solidity
        use 'TovarishFin/vim-solidity'
        -- for react comment
        use 'JoosepAlviste/nvim-ts-context-commentstring'
        -- typescript & html & vue
        use {"windwp/nvim-ts-autotag"}

        -- Explorer
        use {"kyazdani42/nvim-tree.lua", opt = true}

        -- TODO: remove when open on dir is supported by nvimtree
        use "kevinhwang91/rnvimr"

        -- Git
        use {"lewis6991/gitsigns.nvim"}
        use {'TimUntersberger/neogit', requires = 'nvim-lua/plenary.nvim'}
        use 'f-person/git-blame.nvim'

        -- git diff view
        use 'sindrets/diffview.nvim'

        use {"folke/which-key.nvim"}

        use {"glepnir/dashboard-nvim"}

        use {"windwp/nvim-autopairs", opt = true}
        use {"terrortylor/nvim-comment"}
        use {"kevinhwang91/nvim-bqf"}

        -- Icons
        use {"kyazdani42/nvim-web-devicons"}

        -- Status Line and Bufferline
        use {"glepnir/galaxyline.nvim"}
        use {"romgrk/barbar.nvim"}

        -- for text object
        use {"wellle/targets.vim"}
        use {'andymass/vim-matchup'}

        -- search related
        use {'kevinhwang91/nvim-hlslens'}
        use {'haya14busa/vim-asterisk'}
        use 'eugen0329/vim-esearch' -- replace CocSearch

        -- tpope -- TODO: replace with lua
        use 'tpope/vim-abolish'
        use 'tpope/vim-repeat'
        use 'tpope/vim-unimpaired'
        use 'junegunn/vim-easy-align'
        -- " use 'tpope/vim-sleuth'

        use {'blackCauldron7/surround.nvim'}

        -- color
        use "norcalli/nvim-colorizer.lua"

        -- for note taking
        -- use "oberblastmeister/neuron.nvim"

        use 'monaqa/dial.nvim'

        use "mbbill/undotree"

        use 'editorconfig/editorconfig-vim'

        -- rsync
        use 'kenn7/vim-arsync'

        use {'lukas-reineke/indent-blankline.nvim', branch = "lua"}

        use 'davidgranstrom/nvim-markdown-preview'

        use 'dstein64/vim-startuptime'

        use '/usr/local/opt/fzf'
        use 'junegunn/fzf.vim'
        use 'vijaymarupudi/nvim-fzf'

        -- Fast move when :<bumber>
        -- use 'nacro90/numb.nvim'   -- lag ??

        -- SQL
        use {"tpope/vim-dadbod", requires = {"kristijanhusak/vim-dadbod-completion", "kristijanhusak/vim-dadbod-ui"}}

        -- docs

        use {'kkoomen/vim-doge', run = ":call doge#install()"}

        -- theme
        use {'dracula/vim', as = 'dracula'}

        use {'akinsho/flutter-tools.nvim', requires = 'nvim-lua/plenary.nvim'}

        use 'gennaro-tedesco/nvim-jqx'

        use {"haringsrob/nvim_context_vt"}

        use {'gabrielpoca/replacer.nvim'}

        -- use {"folke/todo-comments.nvim"} -- this lag too

        -- fix gx open command in vim
        use {"felipec/vim-sanegx"}

        require_plugin("nvim-tree.lua")
        require_plugin("nvim-autopairs")

    end,
    config = {
        display = {open_fn = require('packer.util').float},
        max_jobs = 10
        -- profile = {
        --     enable = true,
        --     threshold = 1 -- the amount in ms that a plugins load time must be over for it to be included in the profile
        -- }
    }
})
