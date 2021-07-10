set nocompatible
set number relativenumber
syntax enable
set fileencodings=utf-8
set encoding=utf-8
set title
set autoindent
set nobackup
set nohlsearch
set showcmd
set cmdheight=1
set laststatus=2
set scrolloff=10
set shell=fish
set lazyredraw
set ignorecase
set smarttab
filetype plugin indent on
set shiftwidth=2
set tabstop=2 softtabstop=2
set expandtab
set ai
set si
set backspace=start,eol,indent
set path+=**
set hidden
set guicursor=

au BufNewFile,BufRead *.graphql set ft=graphql
au BufNewFile,BufRead *.tex set ft=tex

let g:sql_type_default = 'pgsql'

lua <<EOF
vim.api.nvim_exec(
    [[
   au BufEnter term://* setlocal nonumber
   au BufEnter,BufWinEnter,WinEnter,CmdwinEnter * if bufname('%') == "NvimTree" | set laststatus=0 | else | set laststatus=2 | endif
   au BufEnter term://* set laststatus=0 
]],
    false
)
EOF

