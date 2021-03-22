-- _____       __________ ______
-- ___(_)_________(_)_  /____  /___  _______ _
-- __  /__  __ \_  /_  __/__  /_  / / /  __ `/
-- _  / _  / / /  / / /____  / / /_/ // /_/ /
-- /_/  /_/ /_//_/  \__/(_)_/  \__,_/ \__,_/

-- General mappings
require('plugins')
require('keymappings')
require('settings')
require('colorscheme')
require('nv-utils')

-- Plugins
require('nv-compe')
require('nv-colorizer')
require('nv-floaterm')
require('nv-nvimtree')
require('nv-treesitter')
require('nv-galaxyline')
require('nv-gitsigns')
require('nv-nvim-autopairs')
require('nv-startify')
require('nv-comment')
require('nv-telescope')
require('nv-rnvimr')
require('nv-neogit')
require('nv-hop')
require('nv-gitblame')
require('nv-quickscope')

-- Which Key (Hope to replace with Lua plugin someday)
vim.cmd('source ~/.config/nvim/vimscript/nv-whichkey/init.vim')
vim.cmd('source ~/.config/nvim/vimscript/functions.vim')

-- LSP
require('lsp')
require('lsp.bash-ls')
require('lsp.css-ls')
require('lsp.efm-general-ls')
require('lsp.js-ts-ls')
require('lsp.html-ls')
require('lsp.json-ls')
require('lsp.lua-ls')
require('lsp.python-ls')
require('lsp.vim-ls')
require('lsp.yaml-ls')

-- OneDarkPro (mod. by leff32)
vim.cmd('source ~/.config/nvim/colors/onedarkpro.vim')
