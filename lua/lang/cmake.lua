local M = {}

M.config = function()
	O.lang.cmake = { formatter = { exe = "clang-format", args = {} } }
end

M.format = function()
	-- TODO: implement formatters (if applicable)
	return "No formatters configured!"
end

M.lint = function()
	-- TODO: implement linters (if applicable)
	return "No linters configured!"
end

M.lsp = function()
	if require("gv-utils").check_lsp_client_active("cmake") then
		return
	end

	require("lspconfig").cmake.setup({
		cmd = { DATA_PATH .. "/lspinstall/cmake/venv/bin/cmake-language-server" },
		on_attach = require("lsp").common_on_attach,
		capabilities = require("lsp").common_capabilities,
		filetypes = { "cmake" },
	})
end

M.dap = function()
	-- TODO: implement dap
	return "No DAP configured!"
end

return M
