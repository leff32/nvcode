local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'


if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
  execute 'packadd packer.nvim'
end

vim.cmd 'autocmd BufWritePost plugins.lua PackerCompile' -- Auto compile when there are changes in plugins.lua

return require('packer').startup(function(use)
  -- Packer can manage itself as an optional plugin
  use 'wbthomason/packer.nvim'

  -- Information
  use 'nanotee/nvim-lua-guide'

  -- Quality of life improvements
  use 'norcalli/nvim_utils'

  -- Explorer
  use 'kyazdani42/nvim-tree.lua'

  -- Color
  use 'christianchiarulli/nvcode-color-schemes.vim'
  use 'norcalli/nvim-colorizer.lua'

  -- LSP
  use 'neovim/nvim-lspconfig'
  use 'glepnir/lspsaga.nvim'
  use 'onsails/lspkind-nvim'
  use 'kosayoda/nvim-lightbulb'

  -- Debugging
  use 'mfussenegger/nvim-dap'

  -- Autocomplete
  use 'hrsh7th/nvim-compe'
  use 'hrsh7th/vim-vsnip'

  -- Treesitter
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
  use 'nvim-treesitter/nvim-treesitter-refactor'

  -- Icons
  use 'kyazdani42/nvim-web-devicons'
  use 'ryanoasis/vim-devicons'

  -- Tab Line
  use 'romgrk/barbar.nvim'

  -- Status Line
  use 'glepnir/galaxyline.nvim'

  -- Telescope
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-media-files.nvim'

  -- Git
  use {'lewis6991/gitsigns.nvim', requires = {'nvim-lua/plenary.nvim'}}

  -- General Plugins
  use 'windwp/nvim-autopairs'
  use 'kevinhwang91/nvim-bqf'
  use 'unblevable/quick-scope'
  use 'airblade/vim-rooter'
  use 'mhinz/vim-startify'
  use 'terrortylor/nvim-comment'
  use 'kevinhwang91/rnvimr'
  use 'voldikss/vim-floaterm'

end)
