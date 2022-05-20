-- Inspired by evil_line: https://github.com/nvim-lualine/lualine.nvim/blob/master/examples/evil_lualine.lua
--
-- gps
local gps = require("nvim-gps")

gps.setup()

local lualine = require('lualine')

local colors = require('user.colors.nord')

local conditions = {
  buffer_not_empty = function()
    return vim.fn.empty(vim.fn.expand('%:t')) ~= 1
  end,
  check_git_workspace = function()
    local filepath = vim.fn.expand('%:p:h')
    local gitdir = vim.fn.finddir('.git', filepath .. ';')
    return gitdir and #gitdir > 0 and #gitdir < #filepath
  end,
}

local config = {
  options = {
    globalstatus = true,
    component_separators = '',
    section_separators = '',
    theme = {
      normal = {
        a = { fg = colors.yellow, bg = colors.bg, gui = 'bold' },
        c = { fg = colors.fg, bg = colors.polar }
      },
      insert = { a = { fg = colors.green, bg = colors.bg, gui = 'bold' } },
      visual = { a = { fg = colors.violet, bg = colors.bg, gui = 'bold' } },
      replace = { a = { fg = colors.cyan, bg = colors.bg, gui = 'bold' } },
      inactive = { c = { fg = colors.fg, bg = colors.polar } },
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
}

local function ins_left(component)
  table.insert(config.sections.lualine_c, component)
end

local function ins_right(component)
  table.insert(config.sections.lualine_x, component)
end

table.insert(config.sections.lualine_a, {
  'mode',
  fmt = function(str) return str:sub(1,1):upper() .. str:sub(2):lower() end,
})

ins_left({
  'branch',
  icon = '',
  color = { fg = colors.fg, gui = 'bold' },
})

ins_left({
  'filetype',
  colored = true,
  icon_only = true
})

ins_left({
  'filename',
  icons_enabled = true,
  path = 1,
  color = { fg = colors.fg, gui = 'bold' },
})

ins_left({
  gps.get_location,
  cond = gps.is_available,
})

ins_left({
  'diagnostics',
  sources = { 'nvim_diagnostic' },
  symbols = { error = ' ', warn = ' ', info = ' ' },
  diagnostics_color = {
    color_error = { fg = colors.red },
    color_warn = { fg = colors.yellow },
    color_info = { fg = colors.cyan },
  },
})

ins_left({
  function()
    return '%='
  end,
})

ins_right({
  'diff',
  symbols = { added = ' ', modified = '柳 ', removed = ' ' },
  diff_color = {
    added = { fg = colors.green },
    modified = { fg = colors.orange },
    removed = { fg = colors.red },
  },
})

ins_right({
  'location',
  color = { fg = colors.fg },
  fmt = function(s) return '[' .. s .. ']' end,
})

ins_right({ 'progress', color = { fg = colors.fg, gui = 'bold' }, cond = conditions.hide_in_width })

ins_right({
  function()
    local msg = ''
    local buf_ft = vim.api.nvim_buf_get_option(0, 'filetype')
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
  color = { fg = colors.yellow, gui = 'bold'},
})

lualine.setup(config)
