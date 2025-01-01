local builtin = require("telescope.builtin")

vim.keymap.set('n', '<C-p>', builtin.find_files,{}) -- CTRL + P = show telescope
vim.keymap.set('n', '<leader>ft', builtin.live_grep, {}) -- SPACE + fg = find text
vim.keymap.set('n', '<leader>e', ':Neotree  reveal filesystem left toggle<CR>')
