local map = vim.keymap.set

vim.g.mapleader = ' ' --mengubah leader menjadi spasi

map('n','<leader>w',':w<cr>',{silent=true,noremap=true})
map('n','<leader>q',':q<cr>',{silent=true,noremap=true})
map('n','<Esc>',':nohlsearch<cr>',{silent=true})
-- visual tab
map("v", "<Tab>", ">gv", { noremap = true, silent = true })
--telescope map
map('n','<leader>ff',':Telescope find_files<cr>',{silent=true,noremap=true})
-- for lua comment 
vim.api.nvim_create_autocmd("FileType", {
  pattern = "lua",
  callback = function()
    map("v", "<leader>/", [[:s/^/-- /<CR>]], { buffer = true, noremap = true, silent = true })
    map("v", "<leader>u", [[:s/^-- //<CR>]], { buffer = true, noremap = true, silent = true })
  end,
})
-- for python comment 
vim.api.nvim_create_autocmd("FileType", {
  pattern = "python",
  callback = function()
    map("v", "<leader>/", [[:s/^/# /<CR>]], { buffer = true, noremap = true, silent = true })
    map("v", "<leader>u", [[:s/^# //<CR>]], { buffer = true, noremap = true, silent = true })
  end,
})
