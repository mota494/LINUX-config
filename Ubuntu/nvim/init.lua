require("config.lazy")
require("config.keybinds")

local tab_width = 4
vim.opt.tabstop = tab_width
vim.opt.softtabstop = tab_width
vim.opt.shiftwidth = tab_width
vim.opt.expandtab = false
vim.opt.number = true
vim.opt.numberwidth = 3
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.ruler = true
vim.opt.swapfile = false
vim.opt.showtabline = 2
vim.cmd('let g:mail42 = "mloureir@42porto.com"')
vim.cmd('let g:user42 = "mloureir"')
vim.cmd.set "number"
vim.cmd.colorscheme "catppuccin"
