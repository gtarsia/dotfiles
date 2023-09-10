local keymap = vim.keymap

vim.g.mapleader = ' '

-- Does not yank on delete
keymap.set('n', 'x', '"_x')

-- Increment/decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- Move between windows
keymap.set('n', '<C-h>', '<C-w>h')
-- keymap.set('n', '<C-j>', '<C-w>j')
keymap.set('n', '<C-k>', '<C-w>k')
keymap.set('n', '<C-l>', '<C-w>l')

-- Save
keymap.set('n', '<C-s>', ':w<cr>')
