return 
{
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
  config = function ()
  	local colorscheme = require("tokyonight")
  	colorscheme.setup()
  vim.cmd([[
  colorscheme tokyonight
  ]])
  end,
}
