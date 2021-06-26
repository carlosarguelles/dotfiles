call plug#begin(stdpath('data') . '/plugged')

" Git integration
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'

" Autoclose brackets
Plug 'cohama/lexima.vim'

" Colorscheme
Plug 'morhetz/gruvbox'

if has("nvim")

  " LSP
  Plug 'neovim/nvim-lspconfig'
  Plug 'glepnir/lspsaga.nvim'
  Plug 'nvim-lua/lsp_extensions.nvim'

  " Treesitter for syntax highlightning
  Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }

  "Completion
  Plug 'nvim-lua/completion-nvim'

  " Telescope stuff
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'

  " Icons
  Plug 'kyazdani42/nvim-web-devicons'

  " Lualine
  Plug 'hoob3rt/lualine.nvim'

  " Nvim-tree
  Plug 'kyazdani42/nvim-tree.lua'

endif

call plug#end()
