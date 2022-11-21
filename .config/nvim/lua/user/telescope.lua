local telescope = require("telescope")
local actions = require("telescope.actions")

telescope.setup {
  defaults = {
    prompt_prefix = " ",
    selection_caret = " ",
    file_ignore_patterns = {
      "node_modules",
      ".git",
      "dist",
    },
    path_display = {
      shorten = 3
    },
    mappings = {
      n = {
        ["q"] = actions.close
      },
    },
  },
  pickers = {
    find_files = {
      hidden = true,
    },
  },
}
