--Configuration plugins
--=====================

vim.api.nvim_create_user_command("Setings", function()
  vim.cmd("cd ~/.config/nvim")
  vim.cmd("edit init.lua")
end, {})

require('lazy-conf') --for plugins manager
require('telescope-conf') --for Lsp
require('keymaps-conf') --for keymaps
require('options-conf') --for options
require('autopairs-conf')-- for autopairs
require('lsp-conf') --for Lsp
-- Lua=
vim.cmd[[colorscheme dracula]]

vim.fn.Py_line_config({
--     icon_mode = '#', -- icon for mode 
--     border_left = '∆', -- baground color file
--     border_right = '§', -- baground color file
--     icon_branch = '', -- baground color file
--     icon_file = '#', -- baground color file
--     file_bg = '#e0601b', -- baground color file
--     pipe= '•', -- baground color file
--     branch_bg = '#1b70e0',-- baground color file
    --mode baground harus tabel lua
    mode_bg = {
       Normal='#6f03fc',
       Insert='#000000',
       Visual='#888888',
       VisualLine='#888888',
       VisualBlock='#888888',
       Command='#000000',
       Replace='#888888',
       Terminal='#888888',
       Select='#888888',
    },
})
