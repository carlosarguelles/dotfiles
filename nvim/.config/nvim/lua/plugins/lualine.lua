return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  init = function()
    vim.g.lualine_laststatus = vim.o.laststatus
    if vim.fn.argc(-1) > 0 then
      vim.o.statusline = " "
    else
      vim.o.laststatus = 0
    end
  end,
  opts = function()
    -- PERF: we don't need this lualine require madness 🤷
    local lualine_require = require("lualine_require")
    lualine_require.require = require

    local icons = require("lazyvim.config").icons

    vim.o.laststatus = vim.g.lualine_laststatus

    local colors = require("colors.tokyonight")

    local config = {
      options = {
        globalstatus = true,
        component_separators = "",
        section_separators = "",
        disabled_filetypes = {
          statusline = {
            "dashboard",
            "alpha",
            "starter",
            "TelescopePrompt",
            "neo-tree",
            "fugitive",
            "oil",
            "terminal",
            "lazyterm",
          },
        },
        theme = {
          normal = {
            a = { fg = colors.yellow, bg = colors.bg },
            b = { fg = colors.fg, bg = colors.bg },
            c = { fg = colors.fg, bg = colors.bg },
          },
          insert = {
            a = { fg = colors.green, bg = colors.bg },
            b = { fg = colors.fg, bg = colors.bg },
            c = { fg = colors.fg, bg = colors.bg },
          },
          visual = {
            a = { fg = colors.violet, bg = colors.bg },
            b = { fg = colors.fg, bg = colors.bg },
            c = { fg = colors.fg, bg = colors.bg },
          },
          replace = {
            a = { fg = colors.cyan, bg = colors.bg },
            b = { fg = colors.fg, bg = colors.bg },
            c = { fg = colors.fg, bg = colors.bg },
          },
          inactive = {
            a = { fg = colors.fg, bg = colors.polar },
            b = { fg = colors.fg, bg = colors.bg },
            c = { fg = colors.fg, bg = colors.bg },
          },
        },
      },
      sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_y = {},
        lualine_z = {},
        lualine_c = {},
        lualine_x = {},
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_y = {},
        lualine_z = {},
        lualine_c = {},
        lualine_x = {},
      },
      extensions = { "neo-tree", "lazy" },
    }

    local function ins_left(component)
      table.insert(config.sections.lualine_c, component)
    end

    local function ins_right(component)
      table.insert(config.sections.lualine_x, component)
    end

    table.insert(config.sections.lualine_a, {
      "mode",
      fmt = function(str)
        return str:sub(1, 1):lower()
      end,
      color = nil,
    })

    ins_left({
      "branch",
      icon = "",
      color = { fg = colors.orange, gui = "bold" },
    })

    ins_left({
      "filetype",
      colored = true,
      icon_only = true,
    })

    ins_left({
      "filename",
      icons_enabled = true,
      path = 1,
      color = { fg = colors.fg, gui = "bold" },
    })

    ins_left({
      "diagnostics",
      sources = { "nvim_diagnostic" },
      symbols = { error = icons.diagnostics.Error, warn = icons.diagnostics.Warn, info = icons.diagnostics.Info },
      diagnostics_color = {
        color_error = { fg = colors.red },
        color_warn = { fg = colors.yellow },
        color_info = { fg = colors.cyan },
      },
    })

    ins_left({
      function()
        return "%="
      end,
    })

    ins_right({
      "diff",
      symbols = { added = "+", modified = "~", removed = "-" },
      diff_color = {
        added = { fg = colors.green },
        modified = { fg = colors.yellow },
        removed = { fg = colors.red },
      },
    })

    ins_right({
      "location",
      color = { fg = colors.fg },
      fmt = function(s)
        return "[" .. s .. "]"
      end,
    })

    ins_right({
      "selectioncount",
      color = { fg = colors.fg },
      fmt = function(s)
        if s == "" then
          return ""
        else
          return "(" .. s .. ")"
        end
      end,
    })

    ins_right({
      "macrorecording",
      color = { fg = colors.fg },
      fmt = function()
        local recording_register = vim.fn.reg_recording()
        if recording_register == "" then
          return ""
        else
          return "Recording @" .. recording_register
        end
      end,
    })

    ins_right({
      "progress",
      color = { fg = colors.fg, gui = "bold" },
    })

    ins_right({
      function()
        local msg = ""
        local buf_ft = vim.api.nvim_buf_get_option(0, "filetype")
        local clients = vim.lsp.get_active_clients()
        if next(clients) == nil then
          return msg
        end
        for _, client in ipairs(clients) do
          local filetypes = client.config.filetypes
          if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
            return client.name
          end
        end
        return msg
      end,
      color = { fg = colors.yellow, gui = "bold" },
    })
    return config
  end,
}
