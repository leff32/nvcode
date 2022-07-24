if vim.fn.has("nvim-0.8") == 1 then
	vim.api.nvim_create_autocmd(
		{ "CursorMoved", "CursorHold", "BufWinEnter", "BufFilePost", "InsertEnter", "BufWritePost", "TabClosed" },
		{
			callback = function()
				require("user.winbar").get_winbar()
			end,
		}
	)
end

vim.api.nvim_create_autocmd({ "BufWinEnter" }, {
	callback = function()
		vim.cmd("set formatoptions-=cro")
	end,
})

vim.api.nvim_create_autocmd({ "VimEnter" }, {
	callback = function()
		vim.cmd("hi link illuminatedWord LspReferenceText")
	end,
})

vim.api.nvim_create_autocmd({ "BufWinEnter" }, {
	pattern = { "*" },
	callback = function()
		vim.cmd("checktime")
	end,
})

-- Highlight selection on yank
vim.api.nvim_create_autocmd("TextYankPost", {
	callback = function()
		vim.highlight.on_yank({ higroup = "IncSearch", timeout = "300" })
	end,
})

-- Bufferline offset for nvim-tree
local view_status_ok, nvim_tree_view = pcall(require, "nvim-tree.view")
if not view_status_ok then
	return
end

local bufferline_status_ok, bufferline_state = pcall(require, "bufferline.state")
if not bufferline_status_ok then
	return
end

vim.api.nvim_create_autocmd({ "BufWinEnter" }, {
	callback = function()
		if nvim_tree_view.is_visible() then
			bufferline_state.set_offset(31)
		end
	end,
})
