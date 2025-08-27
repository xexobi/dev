local lspconfig = require("lspconfig")
local capabilities = require("blink.cmp").get_lsp_capabilities()

vim.bo.omnifunc = "v:lua.vim.lsp.omnifunc"

lspconfig.lua_ls.setup {
  capabilities = capabilities,
  settings = {
    Lua = {
      runtime = { version = "LuaJIT" },
      diagnostics = { globals = { "vim","require" } },
      workspace = {
        library = vim.api.nvim_get_runtime_file("", true),
        checkThirdParty = false,
      },
    },
  },
}

