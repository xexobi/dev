--Configuration for autocomplletion
local cmp = require("cmp")
cmp.setup({
  mapping = cmp.mapping.preset.insert({
    ["<C-Space>"] = cmp.mapping.complete(),
    ["<CR>"] = cmp.mapping.confirm({ select = true }),
    ["<Tab>"] = cmp.mapping.select_next_item(),
    ["<S-Tab>"] = cmp.mapping.select_prev_item(),
  }),
  sources = {
    { name = "nvim_lsp" },
    { name = "buffer" },
    { name = "path" },
    { name = "luasnip" },
  },
})

--Configuration for LSP
require("mason").setup()
local mason_lspconfig =require("mason-lspconfig")
local lspconfig = require("lspconfig")
local capabilities = require("cmp_nvim_lsp").default_capabilities()
--list server 
--===============================================================
mason_lspconfig.setup({
    ensure_installed = {"pyright","html","bashls"},
        -- automatic Configuration for evry LS
    handlers = {function(server_name)
        lspconfig[server_name].setup({
      capabilities = capabilities,
        })
    end,
   },
})
--===============================================================
-- lspconfig.clangd.setup({
--       capabilities = capabilities,
-- })
-- setup lua just for termux
-- lspconfig.lua_ls.setup({
--       capabilities = capabilities,
--       cmd = { "/data/data/com.termux/files/home/lua-language-server/bin/lua-language-server" }, -- sesuaikan path-nya
--       settings = {
--         Lua = {
--             runtime = { version = "LuaJIT" },
--             diagnostics = { globals = { "vim" } },
--             workspace = { library = vim.api.nvim_get_runtime_file("", true) },
--             telemetry = { enable = false },
--     },
--   },
-- })
