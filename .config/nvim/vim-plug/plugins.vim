call plug#begin('~/.config/nvim/autoload/plugged')

    Plug 'sheerun/vim-polyglot'
    Plug 'scrooloose/NERDTree'
    Plug 'jiangmiao/auto-pairs'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'morhetz/gruvbox'
    Plug 'lervag/vimtex'
    Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
    Plug 'nvim-lua/completion-nvim'
    Plug 'tpope/vim-surround'
    Plug 'vim-pandoc/vim-pandoc-syntax'
    Plug 'vim-pandoc/vim-pandoc'
    Plug 'vim-pandoc/vim-rmarkdown'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'neovim/nvim-lspconfig'
    Plug 'kabouzeid/nvim-lspinstall'
    Plug 'lifepillar/pgsql.vim'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'vim-scripts/auctex.vim'
    Plug 'ryanoasis/vim-devicons'
    Plug 'tpope/vim-fugitive'
    Plug 'ap/vim-css-color'
    Plug 'dracula/vim', { 'as': 'dracula' }
    Plug 'rust-lang/rust.vim'
    Plug 'tpope/vim-commentary'

call plug#end()

"LaTeX config
let g:vimtex_compiler_progname = 'nvr'
let g:pandoc#syntax#conceal#use = 0
autocmd Filetype tex source ~/.config/nvim/autoload/plugged/auctex.vim/ftplugin/auctex.vim

" SQL config
let g:sql_type_default = 'pgsql'

" VIMTEX
let g:vimtex_compiler_latexmk = { 
        \ 'executable' : 'latexmk',
        \ 'options' : [ 
        \   '-xelatex',
        \   '-file-line-error',
        \   '-synctex=1',
        \   '-interaction=nonstopmode',
        \ ],
        \}

" AIRLINE
let g:airline_theme = 'gruvbox'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" RUST
let g:rustfmt_autosave = 1
