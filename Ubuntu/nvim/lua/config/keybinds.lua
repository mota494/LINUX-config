-- define space as leader

vim.g.mapleader = " "

local keymap = vim.keymap

-- NeoTree
vim.keymap.set('n', '<leader>nf', ":Neotree focus<CR>")
vim.keymap.set('n', '<leader>nm', ":Neotree close<CR>")

-- Telescope
vim.keymap.set('n', '<leader>f', ":Telescope find_files<CR>")
vim.keymap.set('n', '<leader>s', ":Telescope live_grep<CR>")

-- Terminal
vim.keymap.set('n', '<leader>t', ":terminal<CR>")

-- Tabs
vim.keymap.set('n', '<leader><left>', ":BufferLineCyclePrev<CR>")
vim.keymap.set('n', '<leader><right>', ":BufferLineCycleNext<CR>")
vim.keymap.set('n', '<leader>x', ":BufferLinePickClose<CR>")

-- FineCmdline
vim.api.nvim_set_keymap('n', ':', '<cmd>FineCmdline<CR>', {noremap = true})
