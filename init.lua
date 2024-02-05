require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use "nvim-lua/plenary.nvim"
	use {
  		'nvim-telescope/telescope.nvim',
  			requires = { {'nvim-lua/plenary.nvim'} }
	}
	use 'folke/tokyonight.nvim'
	vim.cmd[[colorscheme tokyonight]]
	 use {
        	'nvim-treesitter/nvim-treesitter',
		run = function()
	            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
        	    ts_update()
        	end,

    	}
	use 'nvim-tree/nvim-tree.lua'
	use 'nvim-tree/nvim-web-devicons'
end)

require('core/keymaps')

--nvim tree
-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup()

-- OR setup with some options
require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})
