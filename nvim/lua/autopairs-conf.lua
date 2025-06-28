--===============================================================
require("nvim-autopairs").setup({
  check_ts = true,  -- enable Treesitter integration
  disable_filetype = { "TelescopePrompt", "vim" },
  fast_wrap = {},
})
local cmp_autopairs = require("nvim-autopairs.completion.cmp")
local cmp = require("cmp")
cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
--===============================================================
