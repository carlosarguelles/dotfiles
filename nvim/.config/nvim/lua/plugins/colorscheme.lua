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
        ---@param colors Nord.Palette
        on_highlights = function(hl, colors)
          hl.NavicSeparator = {
            bg = colors.polar_night.origin,
          }
          hl.StatusLine = {
            bg = colors.polar_night.origin,
          }
        end,
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
