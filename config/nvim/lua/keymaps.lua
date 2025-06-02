local map = vim.keymap.set
local opts = {noremap = true,silent = true}

vim.g.mapleader = " "
map("n", "<leader>w", ":w<CR>", opts)
map("n", "<leader>q", ":q<CR>", opts)
map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", opts)

