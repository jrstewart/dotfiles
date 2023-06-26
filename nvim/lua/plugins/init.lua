vim.cmd([[packadd packer.nvim]])

return require('packer').startup(function()
  use 'wbthomason/packer.nvim'

  --- text editing and searching
  use 'christoomey/vim-tmux-navigator'
  use 'tpope/vim-commentary'
  use 'tpope/vim-endwise'
  use 'tpope/vim-fugitive'
  use 'tpope/vim-projectionist'
  use 'tpope/vim-surround'
  use 'windwp/nvim-autopairs'
  use 'ntpeters/vim-better-whitespace'

  --- languages
  use 'dart-lang/dart-vim-plugin'
  -- use 'elixir-editors/vim-elixir'
  use 'simrat39/rust-tools.nvim'
  use 'wlangstroth/vim-racket'

  --- UI
  use 'morhetz/gruvbox'
  use {
    'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }
  use {
    'nvim-telescope/telescope.nvim',
    requires = {'nvim-lua/plenary.nvim'}
  }
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make'}
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ":TSUpdate"
  }
  use 'mfussenegger/nvim-dap'

  -- language server configurations
  use 'neovim/nvim-lspconfig'

  --- completion and snippets
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'
  use 'onsails/lspkind-nvim'
end)
