local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

keymap("n", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "<M-Up>", ":resize -2<CR>", opts)
keymap("n", "<M-Down>", ":resize +2<CR>", opts)
keymap("n", "<M-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<M-Right>", ":vertical resize +2<CR>", opts)

-- Clipboard
keymap("n", "<Leader>y", '"*y', opts)
keymap("n", "<Leader>Y", '"*yy', opts)
keymap("n", "<Leader>p", '"*p', opts)
keymap("n", "<Leader>P", '"*P', opts)

-- Source file
keymap("n", "<Leader>so", ':so %<CR>', opts)

-- Telescope
keymap("n", "<C-p>", "<cmd>Telescope find_files<CR>", opts)
keymap("n", "<C-Space>", "<cmd>Telescope git_files<CR>", opts)
keymap("n", ";g", "<cmd>Telescope live_grep<CR>", opts)
keymap("n", ";b", "<cmd>Telescope buffers<CR>", opts)
keymap("n", ";;", "<cmd>Telescope help_tags<CR>", opts)

-- DBUI
keymap("n", "<Leader>du", "<cmd>DBUIToggle<CR>", opts)
keymap("n", "<Leader>df", "<cmd>DBUIFindBuffer<CR>", opts)
keymap("n", "<Leader>dr", "<cmd>DBUIRenameBuffer<CR>", opts)
keymap("n", "<Leader>dl", "<cmd>DBUILastQueryInfo<CR>", opts)

-- Nvim Tree
keymap("n", "<C-e>", "<cmd>NvimTreeToggle<CR>", opts)
