local actions = require('telescope.actions')
require('telescope').setup {
  defaults = {
    prompt_prefix = " ",
    selection_caret = " ",
    file_ignore_patterns = {
      "node_modules",
      ".git"
    },
    mappings = {
      n = {
        ["q"] = actions.close
      },
    },
  }
}
