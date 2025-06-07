local map = vim.keymap.set

vim.g.mapleader = ' ' --mengubah leader menjadi spasi

map('n','<leader>w',':w<cr>',{silent=true,noremap=true})
map('n','<leader>q',':q<cr>',{silent=true,noremap=true})
map('n','<Esc>',':nohlsearch<cr>',{silent=true})
--telescope map
map('n','<leader>ff',':Telescope find_files<cr>',{silent=true,noremap=true})
