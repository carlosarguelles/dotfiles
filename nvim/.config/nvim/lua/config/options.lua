-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--
-- local options = {
--   clipboard = "",
--   backup = false,
--   completeopt = { "menuone", "noselect" },
--   conceallevel = 0,
--   fileencoding = "utf-8",
--   hlsearch = false,
--   ignorecase = true,
--   mouse = "a",
--   pumheight = 10,
--   showmode = false,
--   showtabline = 0,
--   smartcase = true,
--   smartindent = true,
--   splitbelow = true,
--   splitright = true,
--   swapfile = false,
--   undofile = true,
--   updatetime = 300,
--   writebackup = false,
--   expandtab = true,
--   shiftwidth = 4,
--   tabstop = 4,
--   cursorline = true,
--   number = true,
--   relativenumber = true,
--   numberwidth = 4,
--   signcolumn = "yes",
--   wrap = false,
--   scrolloff = 6,
--   sidescrolloff = 6,
--   guicursor = "",
--   list = false,
--   cursorline = false,
-- }
--
--

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

vim.filetype.add({
  extension = {
    templ = "templ",
  },
})

vim.g.snacks_animate = false
