-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Keymaps are automatically loaded on the VeryLazy event
-- Add any additional keymaps here

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

if os.getenv("TMUX") then
  map("n", "<C-h>", "<cmd>TmuxNavigateLeft<cr>", opts)
  map("n", "<C-j>", "<cmd>TmuxNavigateDown<cr>", opts)
  map("n", "<C-k>", "<cmd>TmuxNavigateUp<cr>", opts)
  map("n", "<C-l>", "<cmd>TmuxNavigateRight<cr>", opts)
end

map("n", "<M-Up>", "<cmd>resize +2<cr>", { desc = "Increase window height" })
map("n", "<M-Down>", "<cmd>resize -2<cr>", { desc = "Decrease window height" })
map("n", "<M-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease window width" })
map("n", "<M-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase window width" })

-- Move blocks
map("x", "J", ":move '>+1<CR>gv-gv", opts)
map("x", "K", ":move '<-2<CR>gv-gv", opts)

-- Colon and semicolon
map("n", "<Leader>;", "m`A;<Esc>``", opts)
map("n", "<Leader>,", "m`A,<Esc>``", opts)

map("", "<Leader>y", '"*y', opts)
map("", "<Leader>Y", '"*yy', opts)
map("", "<Leader>p", '"*p', opts)
map("", "<Leader>P", '"*P', opts)
