local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>fi', builtin.find_files, {})
vim.keymap.set('n', '<leader>hi', builtin.oldfiles, {})
vim.keymap.set('n', '<leader>ag', builtin.live_grep, {})
