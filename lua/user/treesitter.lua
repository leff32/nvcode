local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not  status_ok then
  return
end

configs.setup {
  ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  sync_install = false,
  ignore_install = { "" }, -- list of parsers to ignore installing
  autopairs = { enable = true },
  highlight = {
      enable = true, -- false will disable the whole extension
      disable = { "" }, -- list of language that will be disabled
      additional_vim_regex_highlighting = true
  },
  indent = { enable = true, disable = { "yaml" } },
  autotag = {enable = true},
  context_commentstring = {enable = true, enable_autocmd =false, config = {javascriptreact = {style_element = '{/*%s*/}'}}},
  refactor = {highlight_definitions = {enable = true}}
}
