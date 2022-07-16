local status_ok, nvim_tree = pcall(require, "nvim-tree")
if not status_ok then
  return
end

nvim_tree.setup {
  disable_netrw = true,
  hijack_netrw = true,
  open_on_setup = true,
  ignore_ft_on_setup = {
    "startify",
    "dashboard",
    "alpha",
  },
  hijack_unnamed_buffer_when_opening = true,
  hijack_cursor = true,
  sync_root_with_cwd = true,
  hijack_directories = {
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
  renderer = {
    full_name = true,
    highlight_opened_files = "all",
    icons = {
      glyphs = {
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
    }
  },
  update_focused_file = {
    enable = true,
    ignore_list = {},
  },
  git = {
    enable = true,
    ignore = true,
    timeout = 1000,
  },
  actions = {
    open_file = {
      quit_on_open = false,
    },
  }
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
  if nvim_tree_view.is_visible() then
    nvim_tree_view.close()
    bufferline_state.set_offset(0)
  else
    bufferline_state.set_offset(31)
    nvim_tree.find_file(true)
    -- nvim_tree.open()
  end
end

return _M
