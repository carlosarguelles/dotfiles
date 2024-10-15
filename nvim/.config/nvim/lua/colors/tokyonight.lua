local colors = require("tokyonight.colors").setup({
  style = "moon",
  on_colors = function() end,
  on_highlights = function() end,
})

return {
  bg = colors.bg_statusline,
  fg = colors.fg,
  yellow = colors.yellow,
  cyan = colors.cyan,
  darkblue = colors.blue,
  green = colors.green,
  orange = colors.orange,
  violet = colors.magenta,
  magenta = colors.magenta,
  blue = colors.blue,
  red = colors.red,
  polar = colors.info,
  bg1 = colors.bg_highlight,
}
