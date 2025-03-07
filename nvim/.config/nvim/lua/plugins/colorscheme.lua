return {
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
}
