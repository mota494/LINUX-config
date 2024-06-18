local function map(mode, lhs, rhs, opts)
  local options = { noremap=true, silent=true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Change leader to a space
vim.g.mapleader = ' '

map('n', '<leader>f', ':NvimTreeToggle<CR>')
map('n', '<leader>t', ':Telescope find_files<CR>')
vim.api.nvim_set_keymap('n', ':', '<cmd>FineCmdline<CR>', {noremap = true})
map('n', '<leader>n', ':NvimTreeFocus<CR>')
