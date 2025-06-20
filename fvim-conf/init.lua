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
--     border_left = '∆', -- icon for border_left
--     border_right = '§', -- icon for border_right
--     icon_branch = '', -- icon for branch
--     icon_file = '#', -- icon for file 
     file_bg = '#778576', -- baground for file section
--     separator = '•', -- icon for separator
     branch_bg = '#778576',-- baground for branch section
    mode_bg = {
       Normal='#64a4ed',
       Insert='#1cfc03',
       Visual='#888888',
       VisualLine='#888888',
       VisualBlock='#888888',
       Command='#000000',
       Replace='#888888',
       Terminal='#888888',
       Select='#888888',
    },
})
