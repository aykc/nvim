vim.api.nvim_set_keymap('n', '<leader>d', [["_d]], {noremap = true, silent = true})
vim.api.nvim_set_keymap('x', '<leader>d', [["_d]], {noremap = true, silent = true})
vim.api.nvim_set_keymap('x', '<leader>p', [["_P]], {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<F7>', ':NvimTreeToggle<CR>', {noremap = false, silent = true})
