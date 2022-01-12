local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

keymap("", "<Space>", "<Nop>", opts)
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

-- Move blocks
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)

-- Clipboard
keymap("", "<Leader>y", '"*y', opts)
keymap("", "<Leader>Y", '"*yy', opts)
keymap("", "<Leader>p", '"*p', opts)
keymap("", "<Leader>P", '"*P', opts)

-- Colon and semicolon
keymap("n", "<Leader>;", "m`A;<Esc>``", opts)
keymap("n", "<Leader>,", "m`A,<Esc>``", opts)

-- Source file
keymap("n", "<Leader>so", ':so %<CR>', opts)

-- Telescope
keymap("n", "<C-p>", "<cmd>Telescope find_files<CR>", opts)
keymap("n", "<C-f>", "<cmd>Telescope git_files<CR>", opts)
keymap("n", ";g", "<cmd>Telescope live_grep<CR>", opts)
keymap("n", ";b", "<cmd>Telescope buffers<CR>", opts)
keymap("n", ";;", "<cmd>Telescope help_tags<CR>", opts)
keymap("n", ";h", "<cmd>Telescope harpoon marks<CR>", opts)

-- DBUI
keymap("n", "<Leader>du", "<cmd>DBUIToggle<CR>", opts)
keymap("n", "<Leader>df", "<cmd>DBUIFindBuffer<CR>", opts)
keymap("n", "<Leader>dr", "<cmd>DBUIRenameBuffer<CR>", opts)
keymap("n", "<Leader>dl", "<cmd>DBUILastQueryInfo<CR>", opts)

-- Nvim Tree
keymap("n", "<C-e>", "<cmd>NvimTreeToggle<CR>", opts)

-- Harpoon
keymap("n", "<Leader>h", '<cmd>lua require("harpoon.mark").add_file()<CR>', opts)
keymap("n", "h1", '<cmd>lua require("harpoon.ui").nav_file(1)<CR>', opts)
keymap("n", "h2", '<cmd>lua require("harpoon.ui").nav_file(2)<CR>', opts)
keymap("n", "h3", '<cmd>lua require("harpoon.ui").nav_file(3)<CR>', opts)
keymap("n", "h4", '<cmd>lua require("harpoon.ui").nav_file(4)<CR>', opts)
