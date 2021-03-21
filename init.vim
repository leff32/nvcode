"     ____      _ __        _
"    /  _/___  (_) /__   __(_)___ ___
"    / // __ \/ / __/ | / / / __ `__ \
"  _/ // / / / / /__| |/ / / / / / / /
" /___/_/ /_/_/\__(_)___/_/_/ /_/ /_/

source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/keys/mappings.vim
source $HOME/.config/nvim/keys/which-key.vim
source $HOME/.config/nvim/themes/onedark.vim
source $HOME/.config/nvim/themes/airline.vim
" source $HOME/.config/nvim/plug-config/coc.vim
source $HOME/.config/nvim/plug-config/rnvimr.vim
source $HOME/.config/nvim/plug-config/fzf.vim
source $HOME/.config/nvim/plug-config/rainbow.vim
source $HOME/.config/nvim/plug-config/start-screen.vim
source $HOME/.config/nvim/plug-config/signify.vim
source $HOME/.config/nvim/plug-config/sneak.vim
source $HOME/.config/nvim/plug-config/quickscope.vim
source $HOME/.config/nvim/plug-config/floaterm.vim
" source $HOME/.config/nvim/plug-config/treesitter.vim

luafile $HOME/.config/nvim/lua/plug-colorizer.lua

" LSP
source $HOME/.config/nvim/plug-config/lsp-config.vim

" Plugin Configuration
luafile $HOME/.config/nvim/lua/plugins/compe-config.lua
luafile $HOME/.config/nvim/lua/lsp/efm-general-ls.lua
luafile $HOME/.config/nvim/lua/lsp/lua-ls.lua
luafile $HOME/.config/nvim/lua/lsp/python-ls.lua
