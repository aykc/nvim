local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  --	vim.cmd('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
  --	vim.cmd 'packadd packer.nvim'
end

vim.cmd 'autocmd BufWritePost plugins.lua PackerCompile' -- Auto compile when there are changes in plugins.lua

return require('packer').startup(function(use)
  -- plugin manager
  use 'wbthomason/packer.nvim'

  -- aux plugins
  use 'nvim-lua/plenary.nvim'
  use 'famiu/nvim-reload'

  -- color theme
  use 'sainnhe/gruvbox-material'

  -- tpope block
  use 'tpope/vim-commentary'

  -- file browser
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icon
    }
  }

  -- Color
  use 'norcalli/nvim-colorizer.lua'

  -- Git
  -- use { 'lewis6991/gitsigns.nvim', requires = {'nvim-lua/plenary.nvim'} }
  -- use 'kdheepak/lazygit.nvim'
  -- use 'rhysd/committia.vim'
  use 'tpope/vim-fugitive'

  if packer_bootstrap then
    require('packer').sync()
  end
end)
