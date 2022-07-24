local status_ok, bufferline = pcall(require, "bufferline")
if not status_ok then
	return
end

bufferline.setup({
  -- Enable/disable current/total tabpages indicator (top right corner)
  tabpages = false,
  -- Enable/disable close button
  closable = false,
  -- New buffers appear at the end of the list
  insert_at_end = true,
  -- Enable/disable icons
  -- if set to 'numbers', will show buffer index in the tabline
  -- if set to 'both', will show buffer index and icons in the tabline
  icons = true,
  -- Sets the maximum padding width with which to surround each tab
  maximum_padding = 1,
  -- Sets the name of unnamed buffers. By default format is "[Buffer X]"
  -- where X is the buffer number. But only a static string is accepted here.
  no_name_title = nil,
  -- Enable/disable auto-hiding the tab bar when there is a single buffer.
  auto_hide = true,
})
