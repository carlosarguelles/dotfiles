vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost packer.lua source <afile> | PackerSync
  augroup end
]])

local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

packer.startup(function()
	use("wbthomason/packer.nvim")

	-- Utils
	use("tpope/vim-fugitive")
	use("nvim-lua/popup.nvim")
	use("nvim-lua/plenary.nvim")
	use("numToStr/Comment.nvim")
	use("kyazdani42/nvim-tree.lua")
	use("tpope/vim-surround")
	use("tpope/vim-repeat")
	use("windwp/nvim-autopairs") -- Autopairs
	use("christoomey/vim-tmux-navigator") -- Tmux navigation
	use("sbdchd/neoformat")
	use({
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup()
		end,
	})
	-- use("lukas-reineke/indent-blankline.nvim")

	-- Nord. The greatest colorscheme ever.
	use("shaunsingh/nord.nvim")
	use("folke/tokyonight.nvim")
	use("EdenEast/nightfox.nvim") -- Packer

	-- Telescope
	use("nvim-telescope/telescope.nvim")
	-- use 'nvim-telescope/telescope-file-browser.nvim'

	-- DBUI
	use("tpope/vim-dadbod")
	use("kristijanhusak/vim-dadbod-completion")
	use("kristijanhusak/vim-dadbod-ui")

	-- cmp
	use("hrsh7th/nvim-cmp") -- The completion plugin
	use("hrsh7th/cmp-buffer") -- buffer completions
	use("hrsh7th/cmp-path") -- path completions
	use("hrsh7th/cmp-cmdline") -- cmdline completions
	use("saadparwaiz1/cmp_luasnip") -- snippet completions
	use("hrsh7th/cmp-nvim-lsp")

	-- LSP
	use("neovim/nvim-lspconfig")
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")

	-- Snippets
	use("L3MON4D3/LuaSnip") --snippet engine
	use("rafamadriz/friendly-snippets") -- a bunch of snippets to use

	-- Treesitter
	use({
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
	})

	use("JoosepAlviste/nvim-ts-context-commentstring")
	use("windwp/nvim-ts-autotag")
	use("p00f/nvim-ts-rainbow")

	-- TS
	use("jose-elias-alvarez/nvim-lsp-ts-utils")
	use("mattn/emmet-vim")

	-- RMarkdown
	use("vim-pandoc/vim-pandoc")
	use("vim-pandoc/vim-pandoc-syntax")
	use("vim-pandoc/vim-rmarkdown")
	use("dhruvasagar/vim-table-mode")

	-- Copilot
	use("Lucklyric/copilot.vim")
	use("hrsh7th/cmp-copilot")

	-- Lualine
	use("nvim-lualine/lualine.nvim")

	use({
		"kyazdani42/nvim-web-devicons",
		config = function()
			require("nvim-web-devicons").setup({
				default = true,
			})
		end,
	})

	use({
		"iamcco/markdown-preview.nvim",
		ft = "markdown",
		run = "cd app && yarn install",
	})

	-- mdx
	use("jxnblk/vim-mdx-js")

	use("SmiteshP/nvim-gps")

	use("RRethy/vim-illuminate")

	use("jose-elias-alvarez/null-ls.nvim")

	use("MunifTanjim/prettier.nvim")

	use("jayp0521/mason-null-ls.nvim")

	use("ldelossa/gh.nvim")

	use("sainnhe/gruvbox-material")

	use("mfussenegger/nvim-jdtls")

	use({ "scalameta/nvim-metals", requires = { "nvim-lua/plenary.nvim" } })

	use("Exafunction/codeium.vim")

	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)
