return {
  "kristijanhusak/vim-dadbod-ui",
  dependencies = {
    { "tpope/vim-dadbod", lazy = true },
    { "kristijanhusak/vim-dadbod-completion", ft = { "sql", "mysql", "plsql" }, lazy = true },
    {
      "hrsh7th/nvim-cmp",
      opts = function(_, opts)
        table.insert(opts.sources, { name = "vim-dadbod-completion" })
      end,
    },
  },
  cmd = {
    "DBUI",
    "DBUIToggle",
    "DBUIAddConnection",
    "DBUIFindBuffer",
  },
  init = function()
    -- Your DBUI configuration
    vim.g.db_ui_use_nerd_fonts = 1
  end,
  keys = {
    { "<leader>db", "<cmd>DBUIToggle<cr>", desc = "Toggle DBUI" },
  },
}
