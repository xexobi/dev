-- File: lua/plugins.lua

-- Auto-install Packer jika belum ada
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath("data").."/site/pack/packer/start/packer.nvim"
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({
      "git", "clone", "--depth", "1",
      "https://github.com/wbthomason/packer.nvim", install_path
    })
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

-- Daftar plugin
require("packer").startup(function(use)
  use "wbthomason/packer.nvim"

  -- Plugin dasar
  use "nvim-lualine/lualine.nvim"              -- Status line
  use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" } -- Highlight + indent

  -- Tambahkan plugin lain di sini...
    use {
  "neovim/nvim-lspconfig",       -- plugin utama LSP config
  requires = {
    "williamboman/mason.nvim",   -- installer server LSP
    "williamboman/mason-lspconfig.nvim", -- integrasi mason + lspconfig
  }
}

  use {
  "nvim-telescope/telescope.nvim",
  requires = { "nvim-lua/plenary.nvim" }
}
use "windwp/nvim-autopairs"
    use "Mofiqul/vscode.nvim"
    -- Autocomplete
  use 'hrsh7th/nvim-cmp'                -- engine autocomplete
  use 'hrsh7th/cmp-nvim-lsp'            -- LSP source autocomplete
  use 'hrsh7th/cmp-buffer'              -- buffer source autocomplete
  use 'hrsh7th/cmp-path'                -- path source autocomplete

  -- Snippet
  use 'L3MON4D3/LuaSnip'                -- snippet engine
  use 'saadparwaiz1/cmp_luasnip'



  if packer_bootstrap then
    require("packer").sync()
  end
end)

-- Auto reload saat plugins.lua disimpan
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

