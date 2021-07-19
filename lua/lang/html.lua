local M = {}

M.config = function()
	O.lang.html = {
		linters = {
			"tidy", -- https://docs.errata.ai/vale/scoping#html
			"vale",
		},
	}
end

M.format = function()
	-- TODO: implement formatters (if applicable)
	return "No formatters configured!"
end

M.lint = function()
	require("lint").linters_by_ft = { html = O.lang.html.linters }
end

M.lsp = function()
	if not require("gv-utils").check_lsp_client_active("html") then
		-- npm install -g vscode-html-languageserver-bin

		require("lspconfig").html.setup({
			cmd = {
				"node",
				DATA_PATH .. "/lspinstall/html/vscode-html/html-language-features/server/dist/node/htmlServerMain.js",
				"--stdio",
			},
			on_attach = require("lsp").common_on_attach,
			capabilities = require("lsp").capabilities_snip,
		})
	end
end

M.dap = function()
	-- TODO: implement dap
	return "No DAP configured!"
end

return M
