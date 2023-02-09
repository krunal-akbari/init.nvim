local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>i', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
<<<<<<< HEAD
=======
vim.keymap.set('n', '<leader>lg',builtin.live_grep,{})
>>>>>>> 8ab5dc6 (first git file)
