if exists("&termguicolors") && exists("&winblend")
  syntax enable
  set termguicolors
  set winblend=0
  set wildoptions=pum
  set pumblend=5
  set background=dark
  let g:gruvbox_transp_bg=1
  let g:gruvbox_bold=0
  let g:gruvbox_italics=0
  colorscheme gruvbox8_hard
endif
