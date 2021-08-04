local status_ok, gl = pcall(require, "galaxyline")
if not status_ok then
	return
end


local colors = {
	alt_bg = "#2E2E2E",
	bg = "#292D38",
	blue = "#569CD6",
	cyan = "#4EC9B0",
	dark_yellow = "#D7BA7D",
	error_red = "#F44747",
	green = "#608B4E",
	grey = "#858585",
	hint_blue = "#9CDCFE",
	info_yellow = "#FFCC66",
	light_blue = "#9CDCFE",
	light_green = "#B5CEA8",
	magenta = "#D16D9E",
	orange = "#FF8800",
	purple = "#C586C0",
	red = "#D16969",
	string_orange = "#CE9178",
	vivid_blue = "#4FC1FF",
	warning_orange = "#FF8800",
	yellow = "#DCDCAA",
}


local space = function()
	return "  "
end


local condition = require("galaxyline.condition")

local gls = gl.section
gl.short_line_list = { "NvimTree", "vista", "dbui", "packer" }

table.insert(gls.left, {
	ViMode = {
		provider = function()
			-- auto change color according the vim mode
			local mode_color = {
				n = colors.blue,
				i = colors.green,
				v = colors.purple,
				[""] = colors.purple,
				V = colors.purple,
				c = colors.magenta,
				no = colors.blue,
				s = colors.orange,
				S = colors.orange,
				[""] = colors.orange,
				ic = colors.yellow,
				R = colors.red,
				Rv = colors.red,
				cv = colors.blue,
				ce = colors.blue,
				r = colors.cyan,
				rm = colors.cyan,
				["r?"] = colors.cyan,
				["!"] = colors.blue,
				t = colors.blue,
			}

			local alias = {
				n = "NORMAL",
				i = "INSERT",
				c = "COMMAND",
				v = "VISUAL",
				V = "V-LINE",
				[""] = "VISUAL",
				R = "REPLACE",
				t = "TERMINAL",
				s = "SELECT",
				S = "S-LINE",
			}
			vim.api.nvim_command("hi GalaxyViMode guifg=" .. mode_color[vim.fn.mode()])

			if alias[vim.fn.mode()] ~= nil then
				return "▊ " .. alias[vim.fn.mode()] .. " "
			else
				return "▊  V-BLOCK "
			end
		end,
		highlight = { colors.red, colors.bg, "bold" },
	},
})
-- print(vim.fn.getbufvar(0, 'ts'))
-- vim.fn.getbufvar(0, 'ts')

table.insert(gls.left, {
	GitIcon = {
		provider = function()
			return " "
		end,
		condition = condition.check_git_workspace,
		separator = " ",
		separator_highlight = { "NONE", colors.bg },
		highlight = { colors.orange, colors.bg },
	},
})

table.insert(gls.left, {
	GitBranch = {
		provider = "GitBranch",
		condition = condition.check_git_workspace,
		separator = " ",
		separator_highlight = { "NONE", colors.bg },
		highlight = { colors.grey, colors.bg },
	},
})

table.insert(gls.left, {
	DiffAdd = {
		provider = "DiffAdd",
		condition = condition.hide_in_width,
		icon = "  ",
		highlight = { colors.green, colors.bg },
	},
})
table.insert(gls.left, {
	DiffModified = {
		provider = "DiffModified",
		condition = condition.hide_in_width,
		icon = " 柳",
		highlight = { colors.blue, colors.bg },
	},
})
table.insert(gls.left, {
	DiffRemove = {
		provider = "DiffRemove",
		condition = condition.hide_in_width,
		icon = "  ",
		highlight = { colors.red, colors.bg },
	},
})

table.insert(gls.right, {
	LspStatus = {
		provider = function()
			return vim.g.coc_current_function
		end,
		icon = " ƒ ",
		condition = condition.hide_in_width,
		highlight = { colors.vivid_blue },
	},
})

table.insert(gls.right, { Void = { provider = { space }, highlight = { colors.bg, colors.bg } } })

table.insert(gls.right, {
	LspStatus = {
		provider = function()
			return vim.fn['coc#status']()
		end,
		condition = condition.hide_in_width,
		highlight = { colors.vivid_blue },
	},
})

table.insert(gls.right, { Void = { provider = { space }, highlight = { colors.bg, colors.bg } } })

table.insert(gls.right, {
	TreesitterIcon = {
		provider = function()
			if next(vim.treesitter.highlighter.active) ~= nil then
				return " "
			end
			return ""
		end,
		separator = " ",
		separator_highlight = { "NONE", colors.bg },
		highlight = { colors.green, colors.bg },
	},
})

table.insert(gls.right, {
	LineInfo = {
		provider = "LineColumn",
		separator = "  ",
		separator_highlight = { "NONE", colors.bg },
		highlight = { colors.grey, colors.bg },
	},
})

table.insert(gls.right, {
	PerCent = {
		provider = "LinePercent",
		separator = " ",
		separator_highlight = { "NONE", colors.bg },
		highlight = { colors.grey, colors.bg },
	},
})

table.insert(gls.right, {
	Tabstop = {
		provider = function()
			return "Spaces: " .. vim.api.nvim_buf_get_option(0, "shiftwidth") .. " "
		end,
		condition = condition.hide_in_width,
		separator = " ",
		separator_highlight = { "NONE", colors.bg },
		highlight = { colors.grey, colors.bg },
	},
})

table.insert(gls.right, {
	BufferType = {
		provider = "FileTypeName",
		condition = condition.hide_in_width,
		separator = " ",
		separator_highlight = { "NONE", colors.bg },
		highlight = { colors.grey, colors.bg },
	},
})

table.insert(gls.right, {
	FileEncode = {
		provider = "FileEncode",
		condition = condition.hide_in_width,
		separator = " ",
		separator_highlight = { "NONE", colors.bg },
		highlight = { colors.grey, colors.bg },
	},
})

table.insert(gls.right, {
	Space = {
		provider = function()
			return " "
		end,
		separator = " ",
		separator_highlight = { "NONE", colors.bg },
		highlight = { colors.orange, colors.bg },
	},
})

table.insert(gls.short_line_left, {
	BufferType = {
		provider = "FileTypeName",
		separator = " ",
		separator_highlight = { "NONE", colors.bg },
		highlight = { colors.grey, colors.bg },
	},
})

table.insert(gls.short_line_left, {
	SFileName = { provider = "SFileName", condition = condition.buffer_not_empty, highlight = { colors.grey, colors.bg } },
})

table.insert(gls.short_line_right, { BufferIcon = { provider = "BufferIcon", highlight = { colors.grey, colors.bg } } })
