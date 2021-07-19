local nvim_lsp = require("lspconfig")
local configs = require("lspconfig/configs")

configs.emmet_ls = {
	default_config = {
		cmd = { "emmet-ls", "--stdio" },
		filetypes = { "html", "css" },
		root_dir = function()
			return vim.loop.cwd()
		end,
		settings = {},
	},
}

nvim_lsp.emmet_ls.setup({ capabilities = require("lsp").capabilities_all, on_attach = require("lsp").common_on_attach })
