-- OneDarkPro (mod. by leff32)
vim.cmd('source ~/.config/nvim/colors/onedarkpro.vim')

local colorscheme = "onedarkpro"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end

-- vim.cmd('let g:nvcode_termcolors=256')
-- vim.opt.nvcode_termcolors = 256

