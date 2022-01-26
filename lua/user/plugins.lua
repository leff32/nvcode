local fn = vim.fn

-- Install packer
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    PACKER_BOOTSTRAP = fn.system {
        "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path
    }
    print "Installing packer... Reopen Neovim"
    vim.cmd [[packadd packer.nvim]]
end

-- Reload nvim when plugins.lua file saved
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Protected call
local status_ok, packer = pcall(require, "packer")
if not status_ok then return end

-- Popup window for packer
packer.init {
    display = {
        open_fn = function()
            return require("packer.util").float {border = "rounded"}
        end
    }
}

-- Plugins
return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'   -- Packer can manage itself
  use 'nvim-lua/popup.nvim'      -- Popup API
  use 'nvim-lua/plenary.nvim'    -- Lua functions used in many plugins
  use 'windwp/nvim-autopairs'    -- Autopairs, integrates with both cmp and treesitter
  use "numToStr/Comment.nvim"    -- Easily comment stuff

    -- cmp plugins
    use "hrsh7th/nvim-cmp"              -- The completion plugin
    use "hrsh7th/cmp-buffer"            -- buffer completions
    use "hrsh7th/cmp-path"              -- path completions
    use "hrsh7th/cmp-cmdline"           -- cmdline completions
    use "saadparwaiz1/cmp_luasnip"      -- snippet completions
    use "L3MON4D3/LuaSnip"              -- snippet engine
    use "rafamadriz/friendly-snippets"  -- a bunch of snippets to use
    use "hrsh7th/cmp-nvim-lsp"
    use "hrsh7th/cmp-nvim-lua"

--     -- Information
--     use 'nanotee/nvim-lua-guide'

--     -- Quality of life improvements
--     use 'norcalli/nvim_utils'

  -- Explorer
  use 'kyazdani42/nvim-tree.lua'

--     -- Color
--     use 'norcalli/nvim-colorizer.lua'

    -- LSP
    use "neovim/nvim-lspconfig"
    use "williamboman/nvim-lsp-installer"
--     use 'glepnir/lspsaga.nvim'
--     use 'onsails/lspkind-nvim'
--     use 'kosayoda/nvim-lightbulb'
--     use 'kabouzeid/nvim-lspinstall'

--     -- Debugging
--     use 'mfussenegger/nvim-dap'

--     -- Autocomplete
--     use 'hrsh7th/nvim-compe'
--     use 'hrsh7th/vim-vsnip'
--     use 'xabikos/vscode-javascript'
--     use 'dsznajder/vscode-es7-javascript-react-snippets'

    -- Treesitter
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
  use 'nvim-treesitter/nvim-treesitter-refactor'
  use 'JoosepAlviste/nvim-ts-context-commentstring'
--     use {'lukas-reineke/indent-blankline.nvim'}

    -- Icons
    use 'kyazdani42/nvim-web-devicons'
    use 'ryanoasis/vim-devicons'

    -- Tab Line
    use 'romgrk/barbar.nvim'

    -- Status Line
--    use 'glepnir/galaxyline.nvim'

  -- Telescope
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-media-files.nvim'

  -- Git
  use 'lewis6991/gitsigns.nvim'
--     use 'TimUntersberger/neogit'
--     use 'f-person/git-blame.nvim'
--     use 'tpope/vim-fugitive'
--     use 'tpope/vim-rhubarb'
--     use 'kdheepak/lazygit.nvim'

--     -- Webdev
--     use 'windwp/nvim-ts-autotag'
--     -- use 'gennaro-tedesco/nvim-jqx'

--     -- General Plugins
--     use 'kevinhwang91/nvim-bqf'
--     use 'unblevable/quick-scope'
--     use 'airblade/vim-rooter'
--     use 'mhinz/vim-startify'
--     use 'kevinhwang91/rnvimr'
--     use 'voldikss/vim-floaterm'
--     use 'liuchengxu/vim-which-key'
--     use 'sheerun/vim-polyglot'
--     use 'phaazon/hop.nvim'
--     use 'psliwka/vim-smoothie'

    -- Configuration setup after cloning packer.nvim [must be at the end after plugins]
    if PACKER_BOOTSTRAP then require("packer").sync() end
end)
