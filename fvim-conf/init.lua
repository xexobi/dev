--Configuration plugins
--=====================
require('lazy-conf') --for plugins manager
require('telescope-conf') --for Lsp
require('keymaps-conf') --for keymaps
require('options-conf') --for options
require('autopairs-conf')-- for autopairs
require('lsp-conf') --for Lsp
-- Lua:
vim.cmd[[colorscheme dracula]]

vim.api.nvim_create_user_command("Setings", function()
  vim.cmd("cd ~/.config/nvim")
  vim.cmd("edit init.lua")
end, {})
