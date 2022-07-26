local preq = require('utils').preq

local configs = preq('nvim-treesitter.configs')

configs.setup {
  ensure_installed = { "ruby", "javascript", "html", "css", "scss", "lua" },
  sync_install = false,
  auto_install = true,
  ignore_install = { "" },
  highlight = {
    enable = true,
    disable = { "" },
    additional_vim_regex_highlighting = true,
  },
  indent = {
    enable = true
  }
}
