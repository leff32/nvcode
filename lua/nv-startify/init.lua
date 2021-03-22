vim.g.startify_custom_header = {
    '   _____   __          ___    ______           _________     _________     ',
    '   ___  | / /____________ |  / /__(_)______ _____  ____/___________  /____ ',
    '   __   |/ /_  _ \\  __ \\_ | / /__  /__  __ `__ \\  /    _  __ \\  __  /_  _ \\',
    '   _  /|  / /  __/ /_/ /_ |/ / _  / _  / / / / / /___  / /_/ / /_/ / /  __/',
    '   /_/ |_/  \\___/\\____/_____/  /_/  /_/ /_/ /_/\\____/  \\____/\\__,_/  \\___/ '
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
    'let startify_bookmarks = [ { \'a\': \'~/.config/alacritty/alacritty.yml\' }, { \'i\': \'~/.config/nvim/init.lua\' }, { \'r\': \'~/.config/ranger/rc.conf\' }, { \'z\': \'~/.zshrc\' }]',
    true)

vim.cmd([[
function! StartifyEntryFormat()
        return 'WebDevIconsGetFileTypeSymbol(absolute_path) ." ". entry_path'
endfunction
]])
