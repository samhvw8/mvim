if require("gv-utils").check_lsp_client_active "sumneko_lua" then return end

-- https://github.com/sumneko/lua-language-server/wiki/Build-and-Run-(Standalone)
local sumneko_root_path = DATA_PATH .. "/lspinstall/lua"
local sumneko_binary = sumneko_root_path .. "/sumneko-lua-language-server"

local library = {}

local path = vim.split(package.path, ";")

-- this is the ONLY correct way to setup your path
table.insert(path, "lua/?.lua")
table.insert(path, "lua/?/init.lua")

local function add(lib)
    for _, p in pairs(vim.fn.expand(lib, false, true)) do
        p = vim.loop.fs_realpath(p)
        library[p] = true
    end
end

-- add runtime
add("$VIMRUNTIME")

-- add your config
add("~/.config/nvim")

-- add plugins
-- if you're not using packer, then you might need to change the paths below
add("~/.local/share/nvim/site/pack/packer/opt/*")
add("~/.local/share/nvim/site/pack/packer/start/*")

require'lspconfig'.sumneko_lua.setup {
    cmd = {sumneko_binary, "-E", sumneko_root_path .. "/main.lua"},
    on_attach = require'lsp'.common_on_attach,
    on_new_config = function(config, root)
        local libs = vim.tbl_deep_extend("force", {}, library)
        libs[root] = nil
        config.settings.Lua.workspace.library = libs
        return config
    end,
    capabilities = require'lsp'.common_capabilities,
    settings = {
        Lua = {
            runtime = {
                -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
                version = 'LuaJIT',
                -- Setup your lua path
                path = path
            },
            completion = {callSnippet = "Both"},
            diagnostics = {
                -- Get the language server to recognize the `vim` global
                globals = {'vim'}
            },
            workspace = {
                -- Make the server aware of Neovim runtime files
                library = library,
                maxPreload = 2000,
                preloadFileSize = 50000
            },
            telemetry = {enable = false}
        }
    }
}

if not require("gv-utils").check_lsp_client_active "efm" then
    -- lua
    local lua_arguments = {}

    local luaFormat = {
        formatCommand = "lua-format -i --no-keep-simple-function-one-line --column-limit=120",
        formatStdin = true
    }

    local lua_fmt = {formatCommand = "luafmt --indent-count 2 --line-width 120 --stdin", formatStdin = true}

    if O.lua.formatter == 'lua-format' then
        table.insert(lua_arguments, luaFormat)
    elseif O.lua.formatter == 'lua-fmt' then
        table.insert(lua_arguments, lua_fmt)
    end
    require("lspconfig").efm.setup {
        -- init_options = {initializationOptions},
        cmd = {DATA_PATH .. "/lspinstall/efm/efm-langserver"},
        init_options = {documentFormatting = true, codeAction = false},
        filetypes = {"lua"},
        root_dir = vim.loop.cwd,
        settings = {languages = {lua = lua_arguments}}
    }
end

require("gv-utils").define_augroups {
    _lua_autoformat = {{"BufWritePre", "*.lua", "lua vim.lsp.buf.formatting_sync(nil, 1000)"}}
}

vim.cmd "setl ts=2 sw=2"
