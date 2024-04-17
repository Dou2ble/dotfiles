local opts = { noremap = true, silent = true }

local keymap = vim.api.nvim_set_keymap

vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Quit and Write custom commands
vim.cmd("command! W :w")
vim.cmd("command! Q :q")
vim.cmd("command! Wq :wq")
vim.cmd("command! WQ :wq")
vim.cmd("command! X :x")


-- Buffers
keymap("n", "H", "<cmd>bprev<CR>", opts)
keymap("n", "L", "<cmd>bnext<CR>", opts)
keymap("n", "X", "<cmd>bdelete!<CR>", opts)

-- idk
keymap("n", "<leader>ff", ":e ", opts)

-- File explorer
keymap("n", "<leader>e", ":Lex 30<CR>", opts)

-- resizing windows
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- better indenting
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)





