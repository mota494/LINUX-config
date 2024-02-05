--nvim plugins START
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
--nvim plugins END

--nvim tree START
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
--nvim tree END

--nvim keybinds START
local function map(mode, lhs, rhs, opts)
  local options = { noremap=true, silent=true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Change leader to a comma
vim.g.mapleader = ','

map('n', '<leader>f', ':NvimTreeToggle<CR>')
--nvim keybinds END

--nvim vim config START
vim.opt.number = true
vim.opt.numberwidth = 3
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.ruler = true
--nvim vim config END
