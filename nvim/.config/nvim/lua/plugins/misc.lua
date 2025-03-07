return {
  { "christoomey/vim-tmux-navigator" },
  { "dhruvasagar/vim-table-mode" },
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({})
    end,
  },
  { "ThePrimeagen/vim-be-good" },
  { "tpope/vim-abolish" },
}
