call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'gruvbox-community/gruvbox'
    Plug 'sainnhe/gruvbox-material'
    Plug 'lervag/vimtex'
    Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
    Plug 'vim-airline/vim-airline'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'neovim/nvim-lspconfig'
    Plug 'anott03/nvim-lspinstall'
    Plug 'nvim-lua/completion-nvim'
    Plug 'tpope/vim-surround'
    Plug 'dracula/vim', { 'as': 'dracula' }
    Plug 'arcticicestudio/nord-vim'
    Plug 'joshdick/onedark.vim'
    Plug 'vim-pandoc/vim-pandoc'
    Plug 'vim-pandoc/vim-pandoc-syntax'
    Plug 'vim-pandoc/vim-rmarkdown'
    Plug 'jvirtanen/vim-octave'

call plug#end()

"LaTeX config
let g:vimtex_compiler_progname = 'nvr'
let g:livepreview_previewer = 'zathura'
let g:livepreview_engine = 'xelatex'
let g:livepreview_cursorhold_recompile = 0
"let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
" Octave syntax
augroup filetypedetect
  au! BufRead,BufNewFile *.m,*.oct set filetype=octave
augroup END
