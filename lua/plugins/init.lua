preq = require('utils').preq
-- print(preq('plugins'))

-- local function preq(module)
--   local ok, lib = pcall(require, module)
--   if ok then return lib end
--   vim.notify("Error: can't load module: " .. module .. '\n\n' .. lib)
--   return nil
-- end

local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  --	vim.cmd('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
  --	vim.cmd 'packadd packer.nvim'
end

-- Plugins sync after file write
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

local packer = preq('packer')

packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

return packer.startup(function(use)
  -- plugin manager
  use 'wbthomason/packer.nvim'

  -- aux plugins
  use 'nvim-lua/plenary.nvim'
  use 'famiu/nvim-reload'

  -- color theme
  use 'sainnhe/gruvbox-material'

  -- tpope block
  -- use 'tpope/vim-commentary'

  -- file browser
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icon
    },
    config = "preq('plugins.nvim-tree')"
  }

  -- Color
  use {
    'norcalli/nvim-colorizer.lua',
    config = "preq('plugins.colorizer')"
  }

  -- Git
  use { 
    'lewis6991/gitsigns.nvim',
    requires = {'nvim-lua/plenary.nvim'},
    config = "preq('plugins.gitsigns')"
  }
  -- use 'kdheepak/lazygit.nvim'
  use {'tpope/vim-fugitive'}

  -- Statusline
  use {
    'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true},
    config = "preq('plugins.lualine')"
  }

  -- Terminal
  use {
    'akinsho/toggleterm.nvim', tag = 'v2.*', branch = 'main',
    config = "preq('plugins.toggleterm')"
  }

  -- Comments
  use {
    'numToStr/Comment.nvim',
    config = "preq('plugins.comment')"
  }

  -- Which Key
  use {
    'folke/which-key.nvim',
    config = "preq('plugins.which-key')"
  }
  
  -- cmp plugins
  use {
    'hrsh7th/nvim-cmp', -- The completion plugin
    config = "preq('plugins.cmp')"
  }
  use 'hrsh7th/cmp-buffer' -- buffer completions
  use 'hrsh7th/cmp-path' -- path completions
  use 'hrsh7th/cmp-cmdline' -- cmdline completions
  use 'saadparwaiz1/cmp_luasnip' -- snippet completions
  use {
    'hrsh7th/cmp-nvim-lsp',
    config = "preq('plugins.lsp')"
  }
  use 'hrsh7th/cmp-nvim-lua'
  
  -- Snippets
  use 'L3MON4D3/LuaSnip' --snippet engine
  use 'rafamadriz/friendly-snippets' -- a bunch of snippets to use

  -- LSP
  use "neovim/nvim-lspconfig" -- enable LSP
  use "williamboman/nvim-lsp-installer" -- simple to use language server installer

  -- Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
    config = "preq('plugins.treesitter')"
  }

  -- Autopairs
  use {
    'windwp/nvim-autopairs',
    requires = {'hrsh7th/nvim-cmp'},
    config = "preq('plugins.autopairs')"
  }

  -- Telescope
  use {
    'nvim-telescope/telescope.nvim',
    config = "preq('plugins.telescope')"
  }

  -- indent-blankline
  use {
    'lukas-reineke/indent-blankline.nvim',
    config = "preq('plugins.indent-blankline')"
  }

  if PACKER_BOOTSTRAP then
    require('packer').sync()
  end
end)
