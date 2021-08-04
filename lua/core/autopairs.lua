local status_ok, npairs = pcall(require, "nvim-autopairs")
if not status_ok then
	return
end

local remap = vim.api.nvim_set_keymap
local Rule = require("nvim-autopairs.rule")

-- skip it, if you use another global object
_G.MUtils = {}

vim.g.completion_confirm_key = ""
MUtils.completion_confirm = function()
  if vim.fn.pumvisible() ~= 0 then
    if vim.fn.complete_info()["selected"] ~= -1 then
      return vim.fn["coc#_select_confirm"]()
    else
      return npairs.esc("<C-g>u<cr>")
    end
  else
    return npairs.autopairs_cr()
  end
end


-- inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                            --   \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
remap('i', '<CR>', 'v:lua.MUtils.completion_confirm()', {expr = true, noremap = true})

npairs.setup({
	check_ts = true,
	ts_config = {
		lua = { "string" }, -- it will not add pair on that treesitter node
		javascript = { "template_string" },
		java = false, -- don't check treesitter on java
	},
})

require("nvim-treesitter.configs").setup({ autopairs = { enable = true } })

local ts_conds = require("nvim-autopairs.ts-conds")
local conds = require("nvim-autopairs.conds")

-- press % => %% is only inside comment or string
npairs.add_rules({
	Rule("%", "%", "lua"):with_pair(ts_conds.is_ts_node({ "string", "comment" })),
	Rule("$", "$", "lua"):with_pair(ts_conds.is_not_ts_node({ "function" })),
})
