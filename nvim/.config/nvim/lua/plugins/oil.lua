return {
  "stevearc/oil.nvim",
  opts = {
    keymaps = {
      ["<C-v>"] = "actions.select_vsplit",
      ["<C-x>"] = "actions.select_split",
      ["<C-p>"] = false,
      ["<C-l>"] = false,
      ["<C-h>"] = false,
    },
    view_options = {
      show_hidden = true,
    },
    delete_to_trash = true,
  },
  dependencies = { "nvim-tree/nvim-web-devicons" },
  keys = {
    { "<C-e>", "<cmd>Oil<cr>", desc = "Toggle Oil" },
    { "<leader>ee", "<cmd>Oil<cr>", desc = "Toggle Oil" },
  },
}
