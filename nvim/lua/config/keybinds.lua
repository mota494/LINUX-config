vim.g.mapleader = " "

local keymap = vim.keymap

-- NeoTree
vim.keymap.set('n', '<leader>n', ":Neotree focus<CR>")
vim.keymap.set('n', '<leader>m', ":Neotree close<CR>")

-- Telescope
vim.keymap.set('n', '<leader>f', ":Telescope find_files<CR>")
vim.keymap.set('n', '<leader>s', ":Telescope live_grep<CR>")

-- Terminal
vim.keymap.set('n', '<leader>t', ":terminal<CR>")

-- Barbar
vim.keymap.set('n', '<leader><left>', ":BufferPrevious<CR>")
vim.keymap.set('n', '<leader><right>', ":BufferNext<CR>")
vim.keymap.set('n', '<leader>x', ":BufferClose<CR>")

vim.api.nvim_set_keymap('n', ':', '<cmd>FineCmdline<CR>', {noremap = true})
