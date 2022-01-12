local ft = require("Comment.ft")

ft.set('rmarkdown', '<!--%s-->')
ft.set('markdown', '<!--%s-->')

vim.cmd[[
  au BufEnter,BufWinEnter,WinEnter,CmdwinEnter * if bufname('%') == "NvimTree" | set laststatus=0 | else | set laststatus=2 | endif
]]
