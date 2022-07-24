local status_ok, lualine = pcall(require, "lualine")
if not status_ok then
	return
end

local hide_in_width = function()
	return vim.fn.winwidth(0) > 80
end

local diagnostics = {
	"diagnostics",
	sources = { "nvim_diagnostic" },
	sections = { "error", "warn", "info", "hint" },
	symbols = { error = " ", warn = " ", info = " ", hint = " " },
	colored = false,
	update_in_insert = false,
	always_visible = false,
}

local diff = {
	"diff",
	colored = false,
	symbols = { added = " ", modified = " ", removed = " " }, -- changes diff symbols
	cond = hide_in_width,
}

local filename = {
	"filename",
	path = 0,
	symbols = {
		modified = " ",
		readonly = " ",
	},
}

local filetype = {
	"filetype",
	icons_enabled = true,
	-- icon = nil,
}

local branch = {
	"branch",
	icons_enabled = true,
	icon = "",
}

local location = {
	"location",
	padding = { left = 0, right = 1 },
}

-- cool function for progress
local progress = function()
	local current_line = vim.fn.line(".")
	local total_lines = vim.fn.line("$")
	local chars = { "__", "▁▁", "▂▂", "▃▃", "▄▄", "▅▅", "▆▆", "▇▇", "██" }
	local line_ratio = current_line / total_lines
	local index = math.ceil(line_ratio * #chars)
	return chars[index]
end

local my_total_lines = function()
	local total_lines = vim.fn.line("$")
	return total_lines
end

local icon = function()
	return ""
end

-- local spaces = function()
-- 	return "spaces: " .. vim.api.nvim_buf_get_option(0, "shiftwidth")
-- end
-- local lsp = {

-- 	function()
-- 		local msg = "No Active Lsp"
-- 		local buf_ft = vim.api.nvim_buf_get_option(0, "filetype")
-- 		local clients = vim.lsp.get_active_clients()
-- 		if next(clients) == nil then
-- 			return msg
-- 		end
-- 		for _, client in ipairs(clients) do
-- 			local filetypes = client.config.filetypes
-- 			if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
-- 				return client.name
-- 			end
-- 		end
-- 		return msg
-- 	end,
-- }

lualine.setup({
	options = {
		icons_enabled = true,
		theme = "onedark",
		component_separators = { left = "▎", right = "▎" },
		section_separators = { left = "", right = "" },
		disabled_filetypes = { "dashboard", "NvimTree", "Outline", "toggleterm" },
		always_divide_middle = true,
	},
	sections = {
		lualine_a = { icon, branch, diagnostics },
		lualine_b = { diff },
		lualine_c = { filename },
		-- lualine_x = { "encoding", "fileformat", "filetype" },
		lualine_x = { "encoding", filetype },
		lualine_y = { "filesize", my_total_lines },
		lualine_z = { progress, location },
	},
	inactive_sections = {
		lualine_a = {},
		lualine_b = {},
		lualine_c = { "filename" },
		lualine_x = { "location" },
		lualine_y = {},
		lualine_z = {},
	},
	tabline = {},
	extensions = {},
})
