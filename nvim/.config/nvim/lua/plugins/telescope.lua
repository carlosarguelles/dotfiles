return {
  "nvim-telescope/telescope.nvim",
  opts = function()
    local actions = require("telescope.actions")
    return {
      defaults = {
        path_display = { "filename_first" },
        layout_strategy = "horizontal",
        sorting_strategy = "ascending",
        winblend = 0,
        preview = false,
        results_title = false,
        prompt_title = false,
        prompt_prefix = " ",
        selection_caret = "⠀⠀",
        file_ignore_patterns = {
          "node_modules/",
          ".git",
          "dist",
          "build/",
          ".nuxt/",
          ".cache/",
          "venv/",
          "tmp/",
          "public/",
        },
        mappings = {
          n = {
            ["q"] = actions.close,
          },
          i = {
            ["<C-y>"] = actions.select_default,
          },
        },
      },
      pickers = {
        find_files = {
          layout_config = { prompt_position = "top", height = 0.6, width = 0.5 },
          prompt_title = false,
          hidden = true,
        },
        live_grep = {
          layout_config = { prompt_position = "top" },
          preview = true,
        },
      },
    }
  end,
  keys = {
    { "<leader>gs", false },
    { "<leader>gc", false },
    { "<leader>/", false },
    { "<leader><space>", false },
    { "<leader>,", false },
    { "<C-p>", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
    { "<C-f>", "<cmd>Telescope git_files<cr>", desc = "Find Git Files" },
    { ";b", "<cmd>Telescope buffers<cr>", desc = "Find Buffers" },
    { ";g", "<cmd>Telescope live_grep<cr>", desc = "Grep" },
    { ";h", "<cmd>Telescope help_tags<cr>", desc = "Find Help" },
  },
}
