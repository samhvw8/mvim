local M = {}

M.config = function()
	O.lang.elm = {}
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
	if require("gv-utils").check_lsp_client_active("elmls") then
		return
	end

	require("lspconfig").elmls.setup({
		cmd = { DATA_PATH .. "/lspinstall/elm/node_modules/.bin/elm-language-server" },
		on_attach = require("lsp").common_on_attach,
		capabilities = require("lsp").common_capabilities,
		init_options = {
			elmAnalyseTrigger = "change",
			elmFormatPath = DATA_PATH .. "/lspinstall/elm/node_modules/.bin/elm-format",
			elmPath = DATA_PATH .. "/lspinstall/elm/node_modules/.bin/elm",
			elmTestPath = DATA_PATH .. "/lspinstall/elm/node_modules/.bin/elm-test",
		},
	})
end

M.dap = function()
	-- TODO: implement dap
	return "No DAP configured!"
end

return M
