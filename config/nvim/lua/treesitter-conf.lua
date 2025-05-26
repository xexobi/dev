-- File: lua/treesitter-config.lua

require("nvim-treesitter.configs").setup({
  ensure_installed = {
    "lua", "bash", "python", "javascript", "html", "css", "json", "c", "cpp"
  },
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  indent = {
    enable = true,
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "<CR>",
      node_incremental = "<CR>",
      node_decremental = "<BS>",
      scope_incremental = "<TAB>",
    },
  },
})

