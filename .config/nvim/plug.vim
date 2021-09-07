call plug#begin(stdpath('data') . '/plugged')

" Git integration
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'

" Autoclose brackets and suround
Plug 'cohama/lexima.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'

" Colorscheme
Plug 'lifepillar/vim-gruvbox8'

" MATLAB 🤮
Plug 'lazywei/vim-matlab'

" Kitty
Plug 'fladson/vim-kitty'

" Startuptime
Plug 'tweekmonster/startuptime.vim'

"Gruvbox Lua :0
" Plug 'Murtaza-Udaipurwala/gruvqueen'

"Rainbow 🌈 Parentheses
Plug 'p00f/nvim-ts-rainbow'

" LSP
Plug 'neovim/nvim-lspconfig'
Plug 'glepnir/lspsaga.nvim'
Plug 'nvim-lua/lsp_extensions.nvim'
Plug 'kabouzeid/nvim-lspinstall'
Plug 'mfussenegger/nvim-jdtls'

" Treesitter for syntax highlightning
Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }

"Completion
" Plug 'nvim-lua/completion-nvim'
Plug 'hrsh7th/nvim-compe'
Plug 'ray-x/lsp_signature.nvim'
Plug 'L3MON4D3/LuaSnip'
Plug 'rafamadriz/friendly-snippets'
" Plug 'nvim-lua/completion-nvim'

" Telescope stuff
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" Icons
Plug 'kyazdani42/nvim-web-devicons'

" Lualine
Plug 'hoob3rt/lualine.nvim'

" BufferLine
Plug 'akinsho/nvim-bufferline.lua'

" Nvim-tree
Plug 'kyazdani42/nvim-tree.lua'

" Auto closes tags
Plug 'windwp/nvim-ts-autotag'

" Coc
" Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Comments
" Plug 'tpope/vim-commentary'
Plug 'b3nj5m1n/kommentary'

" Haskell Stuff
" Plug 'neovimhaskell/haskell-vim'

" TS/JS Stuff
Plug 'jose-elias-alvarez/nvim-lsp-ts-utils'

" SQL Stuff
Plug 'nanotee/sqls.nvim'
" Plug 'mpyatishev/vim-sqlformat'
Plug 'lifepillar/pgsql.vim'

" Latex Stuff
Plug 'lervag/vimtex'

"THE PRIMEAGEN!
" Plug 'ThePrimeagen/vim-be-good'

"Markdown support
" Plug 'vim-pandoc/vim-pandoc'
" Plug 'vim-pandoc/vim-pandoc-syntax'
" Plug 'vim-pandoc/vim-rmarkdown'
Plug 'jalvesaq/R-Vim-runtime'

"Solarized lua
" Plug 'ishan9299/nvim-solarized-lua'

" Nord Stuff
" Plug 'shaunsingh/nord.nvim'
" Plug 'christianchiarulli/nvcode-color-schemes.vim'

call plug#end()
