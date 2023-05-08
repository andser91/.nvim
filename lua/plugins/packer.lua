-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.1',
	  -- or  )                        , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {
	  "catppuccin/nvim", as = "catppuccin"
  }
  use {
	  'romgrk/barbar.nvim', requires = {
	  'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
	  'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
  }}
  use {
	  'nvim-lualine/lualine.nvim',
	  requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }
  use {
	  'nvim-treesitter/nvim-treesitter',
	  run = ':TSUpdate'
  }
  use { 'nvim-treesitter/playground' }
  use {
	  "nvim-tree/nvim-tree.lua",          -- https://github.com/nvim-tree/nvim-tree.lua
	  requires = {
		  "nvim-tree/nvim-web-devicons",    -- https://github.com/nvim-tree/nvim-web-devicons
	  },
  }

  use {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "neovim/nvim-lspconfig",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/nvim-cmp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-vsnip",
      "hrsh7th/vim-vsnip",
      "mfussenegger/nvim-jdtls"
  }
  use { "mbbill/undotree"}
  use {"akinsho/toggleterm.nvim", tag = '*' }


  use { "terrortylor/nvim-comment" }
  use { 'lewis6991/gitsigns.nvim' }
  use { 'majutsushi/tagbar' }
end)
