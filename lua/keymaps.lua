local builtin = require("telescope.builtin")

vim.keymap.set('n', '<C-p>', builtin.find_files,{}) -- CTRL + P = show telescope
vim.keymap.set('n', '<C-P>', builtin.find_files,{}) -- CTRL + P = show telescope

vim.keymap.set('n', '<leader>ft', builtin.live_grep, {}) -- SPACE + fg = find text
vim.keymap.set('n', '<leader>e', ':Neotree  reveal filesystem left toggle<CR>')


vim.keymap.set('n', '<C-h>', '<C-w>h', { noremap = true, silent = true }) -- Mover para a janela à esquerda
vim.keymap.set('n', '<C-l>', '<C-w>l', { noremap = true, silent = true }) -- Mover para a janela à direita


