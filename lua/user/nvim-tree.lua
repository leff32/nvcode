vim.g.nvim_tree_icons = {
  default = "",
  symlink = "",
  git = {
    unstaged = "",
    staged = "S",
    unmerged = "",
    renamed = "➜",
    deleted = "",
    untracked = "U",
    ignored = "◌",
  },
  folder = {
    default = "",
    open = "",
    empty = "",
    empty_open = "",
    symlink = "",
    }
}
-- TODO: git icons not showing

local status_ok, nvim_tree = pcall(require, "nvim-tree")
if not status_ok then
  return
end

local config_status_ok, nvim_tree_config = pcall(require, 'nvim-tree.config')
if not config_status_ok then
  return
end

local tree_cb = nvim_tree_config.nvim_tree_callback

nvim_tree.setup {
  disable_netrw = true,
  hijack_netrw = true,
  open_on_setup = false,
  ignore_ft_on_setup = {
    "startify",
    "dashboard",
    "alpha",
  },
  auto_close = false,
  open_on_tab = false,
  hijack_cursor = false,
  update_cwd = true,
  update_to_buf_dir = {
    enable = true,
    auto_open = true,
  },
  diagnostics = {
    enable = true,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    },
  },
  update_focused_file = {
    enable = true,
    update_cwd = true,
    ignore_list = {},
  },
  -- system_open = {
  --   cmd  = nil,
  --   args = {}
  -- },
  -- filters = {
  --   dotfiles = false,
  --   custom = {}
  -- },
  git = {
    enable = true,
    ignore = true,
    timeout = 1000,
  },
  view = {
    width = 30,
    height = 30,
    hide_root_folder = false,
    side = "left",
    auto_resize = true,
    mappings = {
      custom_only = false,
      list = {
        { key = { "l", "<CR>", "o" }, cb = tree_cb "edit" },
        { key = "h", cb = tree_cb "close_node" },
        { key = "v", cb = tree_cb "vsplit" },
      },
    },
    number = false,
    relativenumber = false,
  },
  quit_on_open = 0,
  git_hl = 1,
  disable_window_picker = 0,
  root_folder_modifier = ":~",
  show_icons = {
    git = 1,
    folders = 1,
    files = 1,
    folder_arrows = 1
  },
}

local view_status_ok, nvim_tree_view = pcall(require, "nvim-tree.view")
if not view_status_ok then
  return
end

local bufferline_status_ok, bufferline_state = pcall(require, "bufferline.state")
if not bufferline_status_ok then
  return
end

local _M = {}
_M.toggle_tree = function()
  if nvim_tree_view.win_open() then
    nvim_tree.close()
    bufferline_state.set_offset(0)
  else
    bufferline_state.set_offset(31)
    nvim_tree.find_file(true)
  end
end

return _M
