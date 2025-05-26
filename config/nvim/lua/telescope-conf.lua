local telescope = require("telescope")
telescope.setup({
  defaults = {
    layout_config = {
      prompt_position = "top",
    },
    sorting_strategy = "ascending",
    file_ignore_patterns = { "node_modules", ".git/" },
  },
})

