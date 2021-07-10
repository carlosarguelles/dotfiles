if exists("&termguicolors") && exists("&winblend")
  syntax enable
  set termguicolors
  set winblend=0
  set wildoptions=pum
  set pumblend=5
  " source $HOME/.config/nvim/colors/github-colors.vim
  set background=dark
  let g:gruvbox_contrast_dark = 'hard'
  colorscheme gruvbox
  " hi Normal guibg=NONE ctermbg=NONE
endif
