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
	use {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
	}
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'Corona040/highlight-norminette.nvim'
	use "ecthelionvi/NeoColumn.nvim"
	use {
	    'goolord/alpha-nvim',
	    config = function ()
		require'alpha'.setup(require'alpha.themes.dashboard'.config)
	    end
	}
	use {
    		"nvim-telescope/telescope-file-browser.nvim",
    		requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
	}
	use({
    		"iamcco/markdown-preview.nvim",
    		run = function() vim.fn["mkdp#util#install"]() end,
	})
	use {
  		'VonHeikemen/fine-cmdline.nvim',
  		requires = {
    			{'MunifTanjim/nui.nvim'}
  		}
	}
	use {
  		'nvim-lualine/lualine.nvim',
  		requires = { 'nvim-tree/nvim-web-devicons', opt = true }
	}
	use {"akinsho/toggleterm.nvim", tag = '*', config = function()
	  require("toggleterm").setup()
	end}
end)

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
