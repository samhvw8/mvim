local M = {}

M.config = function()
	O.lang.kotlin = {}
end

M.format = function()
	-- TODO: implement formatter for language
	return "No formatter available!"
end

M.lint = function()
	-- TODO: implement linters (if applicable)
	return "No linters configured!"
end

M.lsp = function()
	if require("gv-utils").check_lsp_client_active("kotlin_language_server") then
		return
	end

	--- default config for gradle-projects of the
	--- kotlin-language-server: https://github.com/fwcd/kotlin-language-server
	---
	--- This server requires vim to be aware of the kotlin-filetype.
	--- You could refer for this capability to:
	--- 	https://github.com/udalov/kotlin-vim (recommended)
	--- 	Note that there is no LICENSE specified yet.

	local util = require("lspconfig/util")

	local bin_name = DATA_PATH .. "/lspinstall/kotlin/server/bin/kotlin-language-server"
	if vim.fn.has("win32") == 1 then
		bin_name = bin_name .. ".bat"
	end

	local root_files = {
		"settings.gradle", -- Gradle (multi-project)
		"settings.gradle.kts", -- Gradle (multi-project)
		"build.xml", -- Ant
		"pom.xml", -- Maven
	}

	local fallback_root_files = {
		"build.gradle", -- Gradle
		"build.gradle.kts", -- Gradle
	}

	require("lspconfig").kotlin_language_server.setup({
		cmd = { bin_name },
		on_attach = require("lsp").common_on_attach,
		capabilities = require("lsp").common_capabilities,
		root_dir = function(fname)
			return util.root_pattern(unpack(root_files))(fname) or util.root_pattern(unpack(fallback_root_files))(fname)
		end,
	})
end

M.dap = function()
	-- TODO: implement dap
	return "No DAP configured!"
end

return M
