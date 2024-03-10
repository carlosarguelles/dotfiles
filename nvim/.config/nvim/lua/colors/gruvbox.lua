local configuration = vim.fn["gruvbox_material#get_configuration"]()
local palette = vim.fn["gruvbox_material#get_palette"](
  configuration.background,
  configuration.foreground,
  configuration.colors_override
)
return {
  bg = palette.bg0[1],
  bg1 = palette.bg1[1],
  fg = palette.fg0[1],
  yellow = palette.yellow[1],
  cyan = palette.blue[1],
  darkblue = palette.blue[1],
  green = palette.green[1],
  orange = palette.orange[1],
  violet = palette.purple[1],
  magenta = palette.purple[1],
  blue = palette.blue[1],
  red = palette.red[1],
  polar = palette.blue[1],
}
