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
set noshowcmd
set cmdheight=1
set mouse=a
set encoding=utf-8
"set clipboard=unnamedplus


" PLUGINS
source /Users/carlos/.config/nvim/vim-plug/plugins.vim

" COC 
source /Users/carlos/.config/nvim/vim-plug/coc.vim

" MAPS
source /Users/carlos/.config/nvim/maps.vim

"THEME
let g:gruvbox_italic=1
let g:gruvbox_bold=1
set bg=dark
colorscheme gruvbox

" LaTeX config
autocmd Filetype tex setl updatetime=1

syntax enable
filetype plugin indent on
