return {
  {
    "gbprod/nord.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("nord").setup({
        transparent = false,
        borders = true,
        styles = {
          comments = { italic = false },
        },
      })
      vim.cmd.colorscheme("nord")
    end,
  },
  {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    config = function()
      require("catppuccin").setup({
        flavour = "frappe",
        transparent_background = false,
        no_italic = true,
        no_bold = true,
      })
      -- vim.cmd.colorscheme("catppuccin")
    end,
  },
}
