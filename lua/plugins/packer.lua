-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.1', requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {
	  'nvim-telescope/telescope-fzf-native.nvim', build = 'make', cond = function ()
		  return vim.fn.executable 'make' == 1
	  end
  }

  use {"catppuccin/nvim", as = "catppuccin"}

  use {
	  'romgrk/barbar.nvim', requires = {
		  'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
		  'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons_enabled
	  }
  }
  use {
	  'nvim-lualine/lualine.nvim',
	  requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  use {
	  'nvim-treesitter/nvim-treesitter',
	  run = function ()
		  pcall(require('nvim-treesitter.install').update { with_sync = true})
	  end
  }

  use {
	  'nvim-treesitter/nvim-treesitter-textobjects',
	  after = 'nvim-treesitter'
  }

  use { 'nvim-treesitter/playground' }
  use {
	  "nvim-tree/nvim-tree.lua",          -- https://github.com/nvim-tree/nvim-tree.lua
	  requires = {
		  "nvim-tree/nvim-web-devicons",    -- https://github.com/nvim-tree/nvim-web-devicons
	  },

  }

  use 'tpope/vim-fugitive'
  use 'tpope/vim-rhubarb'
  use 'lewis6991/gitsigns.nvim'
  use 'lukas-reineke/indent-blankline.nvim'
  use 'tpope/vim-sleuth'
  use {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "neovim/nvim-lspconfig",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-nvim-lsp-signature-help",
      "hrsh7th/nvim-cmp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-nvim-lua",
      "hrsh7th/cmp-vsnip",
      "hrsh7th/vim-vsnip",
      "ray-x/go.nvim",
      "ray-x/guihua.lua",
      "simrat39/rust-tools.nvim",
      "puremourning/vimspector",
      "j-hui/fidget.nvim",
      "folke/neodev.nvim",
}
  use { "mbbill/undotree"}
  use {"akinsho/toggleterm.nvim", tag = '*' }


  use { "terrortylor/nvim-comment" }
  use { 'majutsushi/tagbar' }
  use {
      'phaazon/hop.nvim',
      branch = 'v2', -- optional but strongly recommended
  }
end)
