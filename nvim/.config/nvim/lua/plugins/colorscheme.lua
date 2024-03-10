return {
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = function()
      -- vim.o.background = "dark"
      -- vim.cmd.colorscheme("gruvbox")
    end,
  },
  {
    "sainnhe/gruvbox-material",
    priority = 1000,
    config = function()
      -- vim.o.background = "dark"
      -- vim.g.gruvbox_material_ui_contrast = "high"
      -- vim.g.gruvbox_material_float_style = "dim"
      -- vim.g.gruvbox_material_visual = "reverse"
      -- vim.g.gruvbox_material_colors_override = {
      --   ["bg_dim"] = { "#282828", "235" },
      -- }
      -- vim.g.gruvbox_material_background = "medium"
      -- vim.g.gruvbox_material_better_performance = 1
      -- vim.cmd.colorscheme("gruvbox-material")
    end,
  },
  {
    "gbprod/nord.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("nord").setup({})
      vim.cmd.colorscheme("nord")
    end,
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      -- vim.cmd.colorscheme("catppuccin-macchiato")
    end,
  },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    config = function()
      -- require("rose-pine").setup({
      --   styles = {
      --     italic = false,
      --   },
      -- })
      -- vim.cmd.colorscheme("rose-pine-moon")
    end,
  },
}
