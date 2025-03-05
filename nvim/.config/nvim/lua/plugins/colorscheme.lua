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
      require("nord").setup({
        transparent = true,
        borders = true,
        errors = { mode = "none" },
        styles = {
          comments = { italic = false },
        },
        ---@param colors Nord.Palette
        on_highlights = function(hl, colors)
          local dap = {
            "DapUIStopNC",
            "DapUIRestartNC",
            "DapUIStepOutNC",
            "DapUIStepBackNC",
            "DapUIStepIntoNC",
            "DapUIStepOverNC",
            "DapUIEndofBuffer",
            "DapUIPlayPauseNC",
            "DapUIUnavailableNC",
          }
          hl.NormalFloat = {
            bg = "NONE",
          }
          hl.FloatBorder = {
            fg = colors.polar_night.brightest,
            bg = "NONE",
          }
          hl.DapUIScope = {
            bg = "NONE",
          }
          for _, daphl in pairs(dap) do
            hl[daphl] = {
              bg = "NONE",
            }
          end
        end,
      })
      vim.cmd.colorscheme("nord")
    end,
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      -- require("catppuccin").setup({
      --   no_italic = true,
      --   no_bold = true,
      -- })
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
