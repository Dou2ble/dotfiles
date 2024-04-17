require("renamer").setup()

vim.api.nvim_set_keymap('n', '<F2>', '<CMD>lua require("renamer").rename()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<F2>', '<CMD>lua require("renamer").rename()<CR>', { noremap = true, silent = true })
