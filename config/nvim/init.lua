require("core.keymaps-conf")
require("core.options-conf")
require("core.plugins-reg-conf")
require("config.mason")
require("config.lsp")
require("config.blink")
require("config.treesiter")
vim.cmd[[colorscheme nord]]
require("nvim-autopairs").setup()
require("telescope").setup()



