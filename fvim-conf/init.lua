
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
-- Lua:
vim.cmd[[colorscheme dracula]]

vim.fn.Py_line_config({
    file_bg = '#e0601b', -- baground color file
    pipe= '••', -- baground color file
    branch_bg = '#1b70e0',-- baground color file
    --mode baground harus tabel lua
    mode_bg = {
        ['\x16']= '#e01b3c', -- for visual block mode
        n = '#09e644', -- for normal mode
        i = '#82e609',-- for insert mode
        v = '#09e6bd',-- for visual mode
        V = '#e609cf',-- for visual line mode
        c = '#e62709',-- for command mode
        R = '#e62709',-- for replace mode
        t = '#1b53e0',-- for terminal mode
    },
})
