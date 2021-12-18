vim.o.splitright = true
vim.o.splitbelow = true
vim.o.number = true
vim.o.autoindent = true
vim.o.expandtab = true
vim.o.tabstop = 2
vim.o.shiftwidth = vim.o.tabstop
vim.o.scrolloff = 5
vim.o.clipboard = 'unnamedplus'
vim.o.hidden = true
vim.o.guifont = 'JetBrainsMono, Nerd, Font, 11'
vim.o.encoding = 'UTF-8'
vim.o.listchars = 'tab:▸ ,trail:·,precedes:←,extends:→,eol:↲,nbsp:␣'
vim.o.mouse = 'a'
vim.o.undolevels = 1000
vim.o.showmatch = true
vim.o.ignorecase = true
vim.o.hlsearch = false
vim.o.smartcase = true
vim.o.completeopt = 'menu,menuone,noselect'
vim.o.showmode = true
vim.o.cursorline = true

-- set leader key to <space>
vim.g.mapleader = ' '

-- set shada options
vim.o.shada = [[!,'1000,s100,<500,f1,:100,@1000,/50,%50,h]]
