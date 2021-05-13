" Automatically generated packer.nvim plugin loader code

if !has('nvim-0.5')
  echohl WarningMsg
  echom "Invalid Neovim version for packer.nvim!"
  echohl None
  finish
endif

packadd packer.nvim

try

lua << END
  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time("Luarocks path setup", true)
local package_path_str = "/Users/samhv/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/samhv/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/samhv/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/samhv/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/samhv/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time("Luarocks path setup", false)
time("try_loadstring definition", true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    print('Error running ' .. component .. ' for ' .. name)
    error(result)
  end
  return result
end

time("try_loadstring definition", false)
time("Defining packer_plugins", true)
_G.packer_plugins = {
  ["asyncrun.vim"] = {
    loaded = true,
    path = "/Users/samhv/.local/share/nvim/site/pack/packer/start/asyncrun.vim"
  },
  ["asynctasks.vim"] = {
    loaded = true,
    path = "/Users/samhv/.local/share/nvim/site/pack/packer/start/asynctasks.vim"
  },
  ["barbar.nvim"] = {
    loaded = true,
    path = "/Users/samhv/.local/share/nvim/site/pack/packer/start/barbar.nvim"
  },
  ["dashboard-nvim"] = {
    loaded = true,
    path = "/Users/samhv/.local/share/nvim/site/pack/packer/start/dashboard-nvim"
  },
  ["dial.nvim"] = {
    loaded = true,
    path = "/Users/samhv/.local/share/nvim/site/pack/packer/start/dial.nvim"
  },
  ["diffview.nvim"] = {
    loaded = true,
    path = "/Users/samhv/.local/share/nvim/site/pack/packer/start/diffview.nvim"
  },
  dracula = {
    loaded = true,
    path = "/Users/samhv/.local/share/nvim/site/pack/packer/start/dracula"
  },
  ["editorconfig-vim"] = {
    loaded = true,
    path = "/Users/samhv/.local/share/nvim/site/pack/packer/start/editorconfig-vim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/Users/samhv/.local/share/nvim/site/pack/packer/start/friendly-snippets"
  },
  fzf = {
    loaded = true,
    path = "/Users/samhv/.local/share/nvim/site/pack/packer/start/fzf"
  },
  ["fzf.vim"] = {
    loaded = true,
    path = "/Users/samhv/.local/share/nvim/site/pack/packer/start/fzf.vim"
  },
  ["galaxyline.nvim"] = {
    loaded = true,
    path = "/Users/samhv/.local/share/nvim/site/pack/packer/start/galaxyline.nvim"
  },
  ["git-blame.nvim"] = {
    loaded = true,
    path = "/Users/samhv/.local/share/nvim/site/pack/packer/start/git-blame.nvim"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
    path = "/Users/samhv/.local/share/nvim/site/pack/packer/start/gitsigns.nvim"
  },
  ["indent-blankline.nvim"] = {
    loaded = true,
    path = "/Users/samhv/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim"
  },
  ["lsp-status.nvim"] = {
    loaded = true,
    path = "/Users/samhv/.local/share/nvim/site/pack/packer/start/lsp-status.nvim"
  },
  ["lsp_signature.nvim"] = {
    loaded = true,
    path = "/Users/samhv/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/Users/samhv/.local/share/nvim/site/pack/packer/start/lspkind-nvim"
  },
  ["lspsaga.nvim"] = {
    loaded = true,
    path = "/Users/samhv/.local/share/nvim/site/pack/packer/start/lspsaga.nvim"
  },
  neogit = {
    loaded = true,
    path = "/Users/samhv/.local/share/nvim/site/pack/packer/start/neogit"
  },
  ["numb.nvim"] = {
    loaded = true,
    path = "/Users/samhv/.local/share/nvim/site/pack/packer/start/numb.nvim"
  },
  ["nvim-autopairs"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/samhv/.local/share/nvim/site/pack/packer/opt/nvim-autopairs"
  },
  ["nvim-bqf"] = {
    loaded = true,
    path = "/Users/samhv/.local/share/nvim/site/pack/packer/start/nvim-bqf"
  },
  ["nvim-colorizer.lua"] = {
    loaded = true,
    path = "/Users/samhv/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua"
  },
  ["nvim-comment"] = {
    loaded = true,
    path = "/Users/samhv/.local/share/nvim/site/pack/packer/start/nvim-comment"
  },
  ["nvim-compe"] = {
    loaded = true,
    path = "/Users/samhv/.local/share/nvim/site/pack/packer/start/nvim-compe"
  },
  ["nvim-dap"] = {
    loaded = true,
    path = "/Users/samhv/.local/share/nvim/site/pack/packer/start/nvim-dap"
  },
  ["nvim-dap-virtual-text"] = {
    loaded = true,
    path = "/Users/samhv/.local/share/nvim/site/pack/packer/start/nvim-dap-virtual-text"
  },
  ["nvim-hlslens"] = {
    loaded = true,
    path = "/Users/samhv/.local/share/nvim/site/pack/packer/start/nvim-hlslens"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/Users/samhv/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-lspinstall"] = {
    loaded = true,
    path = "/Users/samhv/.local/share/nvim/site/pack/packer/start/nvim-lspinstall"
  },
  ["nvim-markdown-preview"] = {
    loaded = true,
    path = "/Users/samhv/.local/share/nvim/site/pack/packer/start/nvim-markdown-preview"
  },
  ["nvim-tree.lua"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/samhv/.local/share/nvim/site/pack/packer/opt/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/Users/samhv/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-treesitter-refactor"] = {
    loaded = true,
    path = "/Users/samhv/.local/share/nvim/site/pack/packer/start/nvim-treesitter-refactor"
  },
  ["nvim-treesitter-textobjects"] = {
    loaded = true,
    path = "/Users/samhv/.local/share/nvim/site/pack/packer/start/nvim-treesitter-textobjects"
  },
  ["nvim-ts-autotag"] = {
    loaded = true,
    path = "/Users/samhv/.local/share/nvim/site/pack/packer/start/nvim-ts-autotag"
  },
  ["nvim-ts-context-commentstring"] = {
    loaded = true,
    path = "/Users/samhv/.local/share/nvim/site/pack/packer/start/nvim-ts-context-commentstring"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/samhv/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/samhv/.local/share/nvim/site/pack/packer/start/packer.nvim"
  },
  playground = {
    loaded = true,
    path = "/Users/samhv/.local/share/nvim/site/pack/packer/start/playground"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/samhv/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/Users/samhv/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  rnvimr = {
    loaded = true,
    path = "/Users/samhv/.local/share/nvim/site/pack/packer/start/rnvimr"
  },
  ["surround.nvim"] = {
    loaded = true,
    path = "/Users/samhv/.local/share/nvim/site/pack/packer/start/surround.nvim"
  },
  ["targets.vim"] = {
    loaded = true,
    path = "/Users/samhv/.local/share/nvim/site/pack/packer/start/targets.vim"
  },
  ["telescope-asynctasks.nvim"] = {
    loaded = true,
    path = "/Users/samhv/.local/share/nvim/site/pack/packer/start/telescope-asynctasks.nvim"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "/Users/samhv/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim"
  },
  ["telescope-fzf-writer.nvim"] = {
    loaded = true,
    path = "/Users/samhv/.local/share/nvim/site/pack/packer/start/telescope-fzf-writer.nvim"
  },
  ["telescope-lsp-handlers.nvim"] = {
    loaded = true,
    path = "/Users/samhv/.local/share/nvim/site/pack/packer/start/telescope-lsp-handlers.nvim"
  },
  ["telescope-media-files.nvim"] = {
    loaded = true,
    path = "/Users/samhv/.local/share/nvim/site/pack/packer/start/telescope-media-files.nvim"
  },
  ["telescope-node-modules.nvim"] = {
    loaded = true,
    path = "/Users/samhv/.local/share/nvim/site/pack/packer/start/telescope-node-modules.nvim"
  },
  ["telescope-project.nvim"] = {
    loaded = true,
    path = "/Users/samhv/.local/share/nvim/site/pack/packer/start/telescope-project.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/Users/samhv/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  undotree = {
    loaded = true,
    path = "/Users/samhv/.local/share/nvim/site/pack/packer/start/undotree"
  },
  ["vim-abolish"] = {
    loaded = true,
    path = "/Users/samhv/.local/share/nvim/site/pack/packer/start/vim-abolish"
  },
  ["vim-arsync"] = {
    loaded = true,
    path = "/Users/samhv/.local/share/nvim/site/pack/packer/start/vim-arsync"
  },
  ["vim-asterisk"] = {
    loaded = true,
    path = "/Users/samhv/.local/share/nvim/site/pack/packer/start/vim-asterisk"
  },
  ["vim-dadbod"] = {
    loaded = true,
    path = "/Users/samhv/.local/share/nvim/site/pack/packer/start/vim-dadbod"
  },
  ["vim-dadbod-completion"] = {
    loaded = true,
    path = "/Users/samhv/.local/share/nvim/site/pack/packer/start/vim-dadbod-completion"
  },
  ["vim-dadbod-ui"] = {
    loaded = true,
    path = "/Users/samhv/.local/share/nvim/site/pack/packer/start/vim-dadbod-ui"
  },
  ["vim-doge"] = {
    loaded = true,
    path = "/Users/samhv/.local/share/nvim/site/pack/packer/start/vim-doge"
  },
  ["vim-easy-align"] = {
    loaded = true,
    path = "/Users/samhv/.local/share/nvim/site/pack/packer/start/vim-easy-align"
  },
  ["vim-esearch"] = {
    loaded = true,
    path = "/Users/samhv/.local/share/nvim/site/pack/packer/start/vim-esearch"
  },
  ["vim-matchup"] = {
    loaded = true,
    path = "/Users/samhv/.local/share/nvim/site/pack/packer/start/vim-matchup"
  },
  ["vim-repeat"] = {
    loaded = true,
    path = "/Users/samhv/.local/share/nvim/site/pack/packer/start/vim-repeat"
  },
  ["vim-solidity"] = {
    loaded = true,
    path = "/Users/samhv/.local/share/nvim/site/pack/packer/start/vim-solidity"
  },
  ["vim-startuptime"] = {
    loaded = true,
    path = "/Users/samhv/.local/share/nvim/site/pack/packer/start/vim-startuptime"
  },
  ["vim-unimpaired"] = {
    loaded = true,
    path = "/Users/samhv/.local/share/nvim/site/pack/packer/start/vim-unimpaired"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/Users/samhv/.local/share/nvim/site/pack/packer/start/vim-vsnip"
  },
  ["which-key.nvim"] = {
    loaded = true,
    path = "/Users/samhv/.local/share/nvim/site/pack/packer/start/which-key.nvim"
  }
}

time("Defining packer_plugins", false)
if should_profile then save_profiles() end

END

catch
  echohl ErrorMsg
  echom "Error in packer_compiled: " .. v:exception
  echom "Please check your config for correctness"
  echohl None
endtry
