autocmd!
scriptencoding utf-8
set nocompatible
set number relativenumber
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
set nowrap
set si
set backspace=start,eol,indent
set path+=**
set hidden
" set guicursor=
set shortmess+=c

au BufNewFile,BufRead *.graphql set ft=graphql
au BufNewFile,BufRead *.tex set ft=tex
au BufNewFile,BufRead *.fish set ft=fish
au BufNewFile,BufRead *.ino set ft=cpp
" au BufNewFile,BufRead *.rmd,*.Rmd set spell spelllang=es
" au BufNewFile,BufRead *.rmd,*.Rmd set ft=rmarkdown
au BufNewFile,BufRead *.md set spell spelllang=es
autocmd FileType rmarkdown setlocal commentstring=<!--%s-->

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

" FileType

let g:sql_type_default = 'pgsql'


" JAVA 🤮
augroup lsp
   au!
   au FileType java lua require('jdtls').start_or_attach({cmd = {'jdt.ls'}})
augroup end
