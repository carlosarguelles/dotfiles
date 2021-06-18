call plug#begin('~/.config/nvim/autoload/plugged')

    Plug 'nvim-treesitter/nvim-treesitter'
    Plug 'nvim-treesitter/playground'
    Plug 'maxmellon/vim-jsx-pretty'
    Plug 'yuezk/vim-js'
    Plug 'scrooloose/NERDTree'
    Plug 'jiangmiao/auto-pairs'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'kiteco/vim-plugin'
    Plug 'morhetz/gruvbox'
    Plug 'arcticicestudio/nord-vim'
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
    Plug 'junegunn/rainbow_parentheses.vim'
    Plug 'luochen1990/rainbow'

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
" let g:airline_theme = 'aurora'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#show_tab_type = 1
let g:airline#extensions#tabline#buffers_label = 'b'
let g:airline#extensions#tabline#tabs_label = 't'
let g:airline#extensions#tabline#show_splits = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#show_tab_count = 1
let g:airline#extensions#tabline#tab_min_count = 2
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#show_tabs = 1
let g:airline#extensions#tabline#show_tab_nr = 0
let g:airline#extensions#tabline#show_close_button = 0
let g:airline#extensions#bufferline#enabled = 1
let g:airline#extensions#tagbar#enabled = 1

" RUST
let g:rustfmt_autosave = 1

" Colorizer
let g:rainbow#max_level = 16
let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['{', '}']]
autocmd FileType * RainbowParentheses

"Rainbow
let g:rainbow_active = 1

" Polyglot
let g:polyglot_disabled = ['java']

" TREESITTER
lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  highlight = {
    enable = true,              -- false will disable the whole extension
  },
}
EOF

"disable python completions
autocmd FileType python let b:coc_suggest_disable = 1
