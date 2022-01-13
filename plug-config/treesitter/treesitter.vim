lua <<EOF
require'nvim-treesitter.configs'.setup {
ensure_installed = {"go","html","css","json","python"}, -- one of "all", "maintained" (parsers with maintainers), or a list of languages
ignore_install = { "vim" },
highlight = {
    enable = true,              -- false will disable the whole extension
   additional_vim_regex_highlighting = false,
  },
}
EOF
