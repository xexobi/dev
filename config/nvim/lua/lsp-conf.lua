require("mason").setup()
require("mason-lspconfig").setup {
  ensure_installed = { "pyright"}  -- sesuaikan bahasa yang kamu pakai
}

local lspconfig = require("lspconfig")
-- Pyright untuk Python
lspconfig.pyright.setup {}

local lspconfig = require('lspconfig')
local cmp = require'cmp'
local luasnip = require'luasnip'

-- Setup nvim-cmp
cmp.setup({
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },
  mapping = {
    ['<Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      else
        fallback()
      end
    end, {'i','s'}),
    ['<S-Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, {'i','s'}),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
    ['<C-Space>'] = cmp.mapping.complete(),
  },
  sources = {
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
    { name = 'buffer' },
    { name = 'path' },
  }
})

-- Integrasi capabilities untuk nvim-cmp ke LSP
local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- Setup Pyright
lspconfig.pyright.setup {
  capabilities = capabilities,
}
