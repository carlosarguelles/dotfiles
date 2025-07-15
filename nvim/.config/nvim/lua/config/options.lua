-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local options = {
  clipboard = "",
  cursorline = false,
  guicursor = "",
}

for i, j in pairs(options) do
  vim.opt[i] = j
end

vim.cmd("set whichwrap+=<,>,[,],h,l")
vim.cmd([[set iskeyword+=-]])
vim.g.snacks_animate = false
