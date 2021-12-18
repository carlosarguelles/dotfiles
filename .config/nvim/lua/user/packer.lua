vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

packer.startup(function()
  use 'wbthomason/packer.nvim'

  -- Utils
  use "nvim-lua/popup.nvim"
  use "nvim-lua/plenary.nvim"
  use {
    'numToStr/Comment.nvim',
    config = function() require('Comment').setup() end
  }
  use 'kyazdani42/nvim-tree.lua'
  use 'tpope/vim-surround'
  use 'tpope/vim-repeat'
  use 'windwp/nvim-autopairs' -- Autopairs
  use 'christoomey/vim-tmux-navigator' -- Tmux navigation

  -- Nord
  use 'shaunsingh/nord.nvim'

  -- Telescope
  use 'nvim-telescope/telescope.nvim'

  -- DBUI
  use 'tpope/vim-dadbod'
  use 'kristijanhusak/vim-dadbod-completion'
  use 'kristijanhusak/vim-dadbod-ui'

  -- cmp
  use "hrsh7th/nvim-cmp" -- The completion plugin
  use "hrsh7th/cmp-buffer" -- buffer completions
  use "hrsh7th/cmp-path" -- path completions
  use "hrsh7th/cmp-cmdline" -- cmdline completions
  use "saadparwaiz1/cmp_luasnip" -- snippet completions
  use "hrsh7th/cmp-nvim-lsp"

  -- LSP
  use "neovim/nvim-lspconfig"
  use "williamboman/nvim-lsp-installer" -- simple to use language server installer

  -- Snippets
  use "L3MON4D3/LuaSnip" --snippet engine
  use "rafamadriz/friendly-snippets" -- a bunch of snippets to use

  -- Treesitter
   use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
  }
  use "JoosepAlviste/nvim-ts-context-commentstring"
  use "windwp/nvim-ts-autotag"
  use "p00f/nvim-ts-rainbow"
  
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
