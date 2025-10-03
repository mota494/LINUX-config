vim.g.mapleader = " "

local keymap = vim.keymap

vim.keymap.set({ "n", "v" }, "<RightMouse>", function()
  require('menu.utils').delete_old_menus()

  vim.cmd.exec '"normal! \\<RightMouse>"'

  -- clicked buf
  local buf = vim.api.nvim_win_get_buf(vim.fn.getmousepos().winid)
  local options = vim.bo[buf].ft == "NvimTree" and "nvimtree" or "default"

  require("menu").open(options, { mouse = true, botder = false })
end, {})

-- vim.keymap.set("n", "<leader>mm", function()
--   require("menu").open({ mouse = false, border = false })
-- end, {})

vim.keymap.set('n', '<leader>t', ":ToggleTerm direction=float<CR>")

vim.keymap.set('n', '<leader><left>', ":BufferLineCyclePrev<CR>")
vim.keymap.set('n', '<leader><right>', ":BufferLineCycleNext<CR>")
vim.keymap.set('n', '<leader>x', ":BufferLinePickClose<CR>")

vim.keymap.set('n', ':', '<cmd>FineCmdline<CR>', {noremap = true})

vim.keymap.set('n', '<leader>tf', ':Telescope find_files<CR>')
vim.keymap.set('n', '<leader>tr', ':Telescope live_grep<CR>')

vim.keymap.set('n', '<leader>nc', ':NvimTreeClose<CR>')
vim.keymap.set('n', '<leader>nf', ':NvimTreeFocus<CR>')
