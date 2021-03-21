" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'

    " File Explorer
    Plug 'scrooloose/NERDTree'

    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'

    " Themes
    Plug 'joshdick/onedark.vim'

    " Airline
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    " Intellisense
"    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    " Git integration
    Plug 'mhinz/vim-signify'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-rhubarb'
    Plug 'junegunn/gv.vim'

    " Ranger
    Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}

    " FZF
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'airblade/vim-rooter'

    " Colorizer
    Plug 'norcalli/nvim-colorizer.lua'

    " Rainbow
    Plug 'junegunn/rainbow_parentheses.vim'

    " Startify
    Plug 'mhinz/vim-startify'

    " Sneak
    Plug 'justinmk/vim-sneak'

    " Quickscope
    Plug 'unblevable/quick-scope'

    " Which key
    Plug 'liuchengxu/vim-which-key'

    " Floatterm
    Plug 'voldikss/vim-floaterm'

    " Treesitter
"    Plug 'nvim-treesitter/nvim-treesitter'
"    Plug 'christianchiarulli/nvcode-color-schemes.vim'

    " Icons
    Plug 'ryanoasis/vim-webdevicons'

    " LSP
    Plug 'neovim/nvim-lspconfig'
    Plug 'hrsh7th/nvim-compe'

call plug#end()
