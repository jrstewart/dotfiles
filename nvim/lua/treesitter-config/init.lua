require('nvim-treesitter.configs').setup({
  autopairs = {enable = true},
  ensure_installed = "all",
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  ignore_install = {'haskell'},
})
