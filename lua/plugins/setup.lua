-- Automatically install packer
local install_path = vim.fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = vim.fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  print("Installing packer close and reopen Neovim...")
end

require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use {'hrsh7th/nvim-cmp', requires={"hrsh7th/cmp-nvim-lsp","hrsh7th/cmp-nvim-lua","L3MON4D3/LuaSnip"}}
  use 'morhetz/gruvbox'
  use 'neovim/nvim-lspconfig'
  use {'nvim-telescope/telescope.nvim',tag = '0.1.0', requires={'nvim-lua/plenary.nvim','nvim-telescope/telescope-fzf-native.nvim','nvim-treesitter/nvim-treesitter'}}
  end
    )
