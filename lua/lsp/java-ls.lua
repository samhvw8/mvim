-- In Vimscript
-- augroup lsp
--   au!
local util = require 'lspconfig/util'
--   au FileType java lua require('jdtls').start_or_attach({cmd = {'java-linux-ls'}})
-- augroup end
-- find_root looks for parent directories relative to the current buffer containing one of the given arguments.
-- require'lspconfig'.jdtls.setup {cmd = {'java-linux-ls'}}
-- if vim.fn.has("mac") == 1 then
--     JAVA_LS_EXECUTABLE = 'java-mac-ls'
-- elseif vim.fn.has("unix") == 1 then
--     JAVA_LS_EXECUTABLE = 'java-linux-ls'
-- else
--     print("Unsupported system")
-- end
-- 
-- local bundles = {
--     vim.fn.glob(
--         "~/.config/nvim/.debuggers/java-debug/com.microsoft.java.debug.plugin/target/com.microsoft.java.debug.plugin-*.jar")
-- };

local on_attach = function(client, bufr)
    -- require('jdtls').setup_dap()
    require'lsp'.common_on_attach(client, bufr)
end

require'lspconfig'.jdtls.setup {
    on_attach = on_attach,
    cmd = {DATA_PATH .. "/lspinstall/java/jdtls.sh"},
    filetypes = {"java"},
    root_dir = util.root_pattern({'.git', 'build.gradle', 'pom.xml'}),
    capabilities = require'lsp'.common_capabilities
    -- init_options = {bundles = bundles}
    -- on_attach = require'lsp'.common_on_attach
}

