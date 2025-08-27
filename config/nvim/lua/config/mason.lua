require("mason").setup {}
require("mason-lspconfig").setup {
    ensure_installed = { 
    "lua_ls",
    "rust_analyzer",
    "vimls",
    "bashls",
    "clangd",
    "pyright"
},
     automatic_enable = {
        "rust_analyzer",
        "vimls",
        "clangd",
        "bashls",
        "pyright",
    }
}

