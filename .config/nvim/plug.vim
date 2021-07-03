call plug#begin(stdpath('data') . '/plugged')

" Git integration
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'

" Autoclose brackets
Plug 'cohama/lexima.vim'

" Colorscheme
Plug 'morhetz/gruvbox'

if has("nvim")

  " Gruvbox flat
  Plug 'eddyekofo94/gruvbox-flat.nvim'

  " LSP
  Plug 'neovim/nvim-lspconfig'
  Plug 'glepnir/lspsaga.nvim'
  Plug 'nvim-lua/lsp_extensions.nvim'
  Plug 'kabouzeid/nvim-lspinstall'

  " Treesitter for syntax highlightning
  Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }

  "Completion
  " Plug 'nvim-lua/completion-nvim'
  Plug 'hrsh7th/nvim-compe'
  Plug 'hrsh7th/vim-vsnip'
  Plug 'hrsh7th/vim-vsnip-integ'
  Plug 'rafamadriz/friendly-snippets'

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
  Plug 'tpope/vim-commentary'

  " Haskell stuff
  Plug 'neovimhaskell/haskell-vim'

  " TS/JS stuff
  Plug 'jose-elias-alvarez/nvim-lsp-ts-utils'

endif

call plug#end()
