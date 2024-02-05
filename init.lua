require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use "nvim-lua/plenary.nvim"
	use {
  		'nvim-telescope/telescope.nvim',
  			requires = { {'nvim-lua/plenary.nvim'} }
	}
	use 'folke/tokyonight.nvim'
	vim.cmd[[colorscheme tokyonight]]
end)
