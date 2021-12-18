if vim.fn.has("termguicolors") == 1 then
  vim.o.termguicolors = true
end

vim.o.background = 'dark'
vim.g.gruvbox_material_background = 'hard'
vim.g.gruvbox_material_enable_italic=1
vim.cmd 'colorscheme gruvbox-material'
