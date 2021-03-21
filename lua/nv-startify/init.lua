vim.g.startify_custom_header = {
    '        _   __         _    ___          ', '       / | / /__  ____| |  / (_)___ ___  ',
    '      /  |/ / _ \\/ __ \\ | / / / __ `__ \\ ', '     / /|  /  __/ /_/ / |/ / / / / / / / ',
    '    /_/ |_/\\___/\\____/|___/_/_/ /_/ /_/  '
}

vim.g.webdevicons_enable_startify = 1
vim.g.startify_enable_special = 0
vim.g.startify_session_autoload = 1
vim.g.startify_session_delete_buffers = 1
vim.g.startify_change_to_vcs_root = 1
vim.g.startify_fortune_use_unicode = 1
vim.g.startify_session_persistence = 1
vim.g.startify_session_dir = '~/.config/nvim/session'

vim.api.nvim_exec(
    'let startify_lists = [ { \'type\': \'sessions\',  \'header\': [\'   Sessions\'] }, { \'type\': \'files\',     \'header\': [\'   Files\'] }, { \'type\': \'bookmarks\', \'header\': [\'   Bookmarks\'] }]',
    true)

vim.api.nvim_exec(
    'let startify_bookmarks = [ { \'a\': \'~/.config/alacritty/alacritty.yml\' }, { \'i\': \'~/.config/nvim/init.lua\' }, { \'z\': \'~/.zshrc\' }]',
    true)

vim.cmd([[
function! StartifyEntryFormat()
        return 'WebDevIconsGetFileTypeSymbol(absolute_path) ." ". entry_path'
endfunction
]])
