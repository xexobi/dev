-- Auto install lazy for plugins manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim", lazypath
  })
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup({
    {
  "neanias/everforest-nvim",
  version = false,
  lazy = false,
  priority = 1000, -- make sure to load this before all the other start plugins
    },
    {
        'F28-none/py_linevim',
        build=':UpdateRemotePlugins'
    },
--===============================================================
    {
  'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function()
    require'nvim-treesitter.configs'.setup {
      ensure_installed = { "markdown", "markdown_inline","lua","python" },
      highlight = { enable = true },
      indent = { enable = true },
      fold = { enable = true },
    }
  end
    },
--===============================================================
  --for telescope 
  { "nvim-telescope/telescope.nvim",
  dependencies = { "nvim-lua/plenary.nvim"
  } },
--===============================================================
  -- for Lsp
  {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/nvim-cmp",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "L3MON4D3/LuaSnip",
    "saadparwaiz1/cmp_luasnip",
  }},
  -- for auto pairs 
--===============================================================
  {
    "windwp/nvim-autopairs"
  },
--===============================================================
})
