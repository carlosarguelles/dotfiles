if exists("&termguicolors") && exists("&winblend")
  syntax enable
  set termguicolors
  set winblend=0
  set wildoptions=pum
  set pumblend=5
  set background=dark
  " 
  " Nord
  "
  " let g:nord_contrast = v:false
  " let g:nord_borders = v:false
  " let g:nord_disable_background = v:false
  " let g:nord_italic = v:false
  " colorscheme nord
  "
  " " Gruvbox8
  " let g:gruvbox_transp_bg = 0
  " " let g:gruvbox_bold = 0
  " let g:gruvbox_italics = 0
  " let g:gruvbox_plugin_hi_groups = 1
  " let g:gruvbox_underline = 0
  " let g:gruvbox_undercurl = 0
  " colorscheme gruvbox8_hard
  "
  " Gruvbox Flat
  " lua vim.g.gruvbox_flat_style = "hard"
  " colorscheme gruvbox-flat
  "
  "
  ""
  " let g:vscode_style = "dark"
  " " For light theme
  " " let g:vscode_style = "light"
  " colorscheme vscode
  "
  " " Gruvbox Material
  " let g:gruvbox_material_background = 'hard'
  " let g:gruvbox_material_better_performance = 1
  " colorscheme gruvbox-material
  " 
  " colorscheme dracula
  let g:nord_contrast = v:true
  let g:nord_borders = v:true
  let g:nord_italic = v:false
  colorscheme nord
endif
