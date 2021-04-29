local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
    execute("!git clone https://github.com/wbthomason/packer.nvim " .. install_path)
    execute "packadd packer.nvim"
end

--- Check if a file or directory exists in this path
-- local function require_plugin(plugin)
--     local plugin_prefix = fn.stdpath("data") .. "/site/pack/packer/opt/"
-- 
--     local plugin_path = plugin_prefix .. plugin .. "/"
--     --	print('test '..plugin_path)
--     local ok, err, code = os.rename(plugin_path, plugin_path)
--     if not ok then
--         if code == 13 then
--             -- Permission denied, but it exists
--             return true
--         end
--     end
--     --	print(ok, err, code)
--     if ok then
--         vim.cmd("packadd " .. plugin)
--     end
--     return ok, err, code
-- end

vim.cmd "autocmd BufWritePost plugins.lua PackerCompile" -- Auto compile when there are changes in plugins.lua

return require("packer").startup(function(use)
    -- Packer can manage itself as an optional plugin
    use "wbthomason/packer.nvim"

    -- TODO: refactor all of this (for now it works, but yes I know it could be wrapped in a simpler function)
    use {"neovim/nvim-lspconfig"}
    use {"glepnir/lspsaga.nvim"}
    use {"kabouzeid/nvim-lspinstall"}

    -- use {"junegunn/fzf", run = "./install --all"}
    -- use {'junegunn/fzf.vim'}
    -- use {'gfanto/fzf-lsp.nvim'}

    use {'skywind3000/asynctasks.vim'}
    use {'skywind3000/asyncrun.vim'}

    -- Telescope
    use {"nvim-lua/popup.nvim"}
    use {"nvim-lua/plenary.nvim"}
    use {"nvim-telescope/telescope.nvim"}
    use "nvim-telescope/telescope-media-files.nvim"
    use "nvim-telescope/telescope-project.nvim"
    use {"nvim-telescope/telescope-node-modules.nvim"}
    use {"nvim-telescope/telescope-fzy-native.nvim"}
    use {'gbrlsnchs/telescope-lsp-handlers.nvim'}
    use "GustavoKatel/telescope-asynctasks.nvim"

    -- Debugging
    use {"mfussenegger/nvim-dap"}

    -- Autocomplete
    use {"hrsh7th/nvim-compe"}
    use {"hrsh7th/vim-vsnip"}
    use {"rafamadriz/friendly-snippets"}
    use {'onsails/lspkind-nvim'}
    use {"ray-x/lsp_signature.nvim"}

    -- Treesitter
    use {"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"}
    use {"windwp/nvim-ts-autotag"}

    -- Explorer
    use "kyazdani42/nvim-tree.lua"
    -- TODO: remove when open on dir is supported by nvimtree
    use "kevinhwang91/rnvimr"

    use {"lewis6991/gitsigns.nvim"}

    -- use {"liuchengxu/vim-which-key"} -- replace https://github.com/folke/which-key.nvim
    use {"folke/which-key.nvim"}

    use {"glepnir/dashboard-nvim"}
    use {"windwp/nvim-autopairs"}
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
    use {"windwp/nvim-spectre"}
    use {'haya14busa/vim-asterisk'}

    -- tpope -- TODO: replace with lua
    use 'tpope/vim-abolish'
    use 'tpope/vim-repeat'
    use 'tpope/vim-speeddating'
    use 'tpope/vim-unimpaired'
    use 'junegunn/vim-easy-align'
    -- " use 'tpope/vim-sleuth'

    use {'blackCauldron7/surround.nvim'}

    -- color
    use "norcalli/nvim-colorizer.lua"

    -- for react comment
    use 'JoosepAlviste/nvim-ts-context-commentstring'

    -- for note taking
    use "oberblastmeister/neuron.nvim"

    use {'zegervdv/nrpattern.nvim'} -- like switch.vim

    use "mbbill/undotree"

    use 'editorconfig/editorconfig-vim'

    use 'kenn7/vim-arsync'

    -- theme
    use {'dracula/vim', as = 'dracula'}
end)
