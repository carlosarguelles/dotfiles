call plug#begin(stdpath('data') . '/plugged')

" Git integration
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'

" Autoclose brackets and suround
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'windwp/nvim-autopairs'

" Table mode
Plug 'dhruvasagar/vim-table-mode'

" Colorscheme
Plug 'sainnhe/gruvbox-material'
Plug 'Mofiqul/dracula.nvim'
Plug 'shaunsingh/nord.nvim'

" Startuptime
Plug 'tweekmonster/startuptime.vim'

" Rmarkdown support
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'vim-pandoc/vim-rmarkdown'

" LSP
Plug 'neovim/nvim-lspconfig'
" Plug 'tami5/lspsaga.nvim'
Plug 'nvim-lua/lsp_extensions.nvim'
Plug 'kabouzeid/nvim-lspinstall'
" Plpg 'mfussenegger/nvim-jdtls'
Plug 'simrat39/rust-tools.nvim'

" Treesitter for syntax highlightning
Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
Plug 'p00f/nvim-ts-rainbow'

"Completion
Plug 'onsails/lspkind-nvim'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-path'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'ray-x/lsp_signature.nvim'
Plug 'L3MON4D3/LuaSnip'
Plug 'rafamadriz/friendly-snippets'

" Telescope and Harpoon stuff
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'ThePrimeagen/harpoon'

" Icons
Plug 'kyazdani42/nvim-web-devicons'

" Lualine
Plug 'hoob3rt/lualine.nvim'

" Colors for css
Plug 'norcalli/nvim-colorizer.lua'

" Nvim-tree
Plug 'kyazdani42/nvim-tree.lua'

" Auto closes tags
Plug 'windwp/nvim-ts-autotag'

" Comments
Plug 'b3nj5m1n/kommentary'

" TS/JS Stuff
Plug 'jose-elias-alvarez/nvim-lsp-ts-utils'

" Latex Stuff
Plug 'lervag/vimtex'

"THE PRIMEAGEN!
Plug 'ThePrimeagen/vim-be-good'
" Plug 'ThePrimeagen/refactoring.nvim'

"Markdown support
Plug 'jalvesaq/R-Vim-runtime'

" Some pretty vim plugins
" Plug 'karb94/neoscroll.nvim'

" writing
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'

" SQL
Plug 'tpope/vim-dadbod'
Plug 'kristijanhusak/vim-dadbod-completion'
Plug 'kristijanhusak/vim-dadbod-ui'

" Copilot
Plug 'github/copilot.vim'

" Tmux
Plug 'christoomey/vim-tmux-navigator'

" Emmet
Plug 'mattn/emmet-vim'

" VScode
Plug 'Mofiqul/vscode.nvim'

" Prisma
Plug 'pantharshit00/vim-prisma'

call plug#end()
