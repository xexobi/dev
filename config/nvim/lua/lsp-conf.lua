--Configuration for autocomplletion
require("luasnip.loaders.from_vscode").lazy_load()
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
    ensure_installed = {"clangd","lua_ls","pyright","html","bashls"},
        -- automatic Configuration for evry LS
    handlers = {function(server_name)
        lspconfig[server_name].setup({
      capabilities = capabilities,
        })
    end,
   },
})
