require("telescope").setup({
  defaults = {
    vimgrep_arguments = {
      "fd",
      "--type", "f",
      "--hidden",
      "--follow",  -- ⚠️ Ini penting
      "--exclude", ".git"
    }
  }
})

