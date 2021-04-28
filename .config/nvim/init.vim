set nohlsearch
set shell=/bin/zsh
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set incsearch
set scrolloff=10
set spelllang=en,es
set number relativenumber
set termguicolors
set wildmenu
set hidden
set noshowmode
set noruler
set laststatus=0
set noshowcmd
set cmdheight=1
set colorcolumn=80
set cursorline

"set mouse=a
"set clipboard=unnamedplus
"set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
"set termencoding=utf-8
"set encoding=utf-8
"set spell
"set wildmenu


" PLUGINS
source /Users/carlos/.config/nvim/vim-plug/plugins.vim

" COC 
source /Users/carlos/.config/nvim/vim-plug/coc.vim

" MAPS
source /Users/carlos/.config/nvim/maps.vim

"THEME
let g:gruvbox_termcolors = '265'
let g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox
highlight Normal guibg=none

" LaTeX config
autocmd Filetype tex setl updatetime=1
