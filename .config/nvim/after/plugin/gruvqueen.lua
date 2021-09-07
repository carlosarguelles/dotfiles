--[[ vim.o.background = "dark" -- or light if you so prefer
require("gruvqueen").setup({
    config = {
        disable_bold = true,
        italic_comments = false,
        italic_keywords = false,
        italic_functions = false,
        italic_variables = false,
        invert_selection = true,
        style = 'mix', -- possible values: 'original', 'mix', 'material'
        transparent_background = true,
        -- bg_color = "black",
    },
}) ]]
