vim.cmd [[
try
  let g:nord_contrast = v:true
  let g:nord_borders = v:true
  let g:nord_italic = v:false
  colorscheme nord
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]]
