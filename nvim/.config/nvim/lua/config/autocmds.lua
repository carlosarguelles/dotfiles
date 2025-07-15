-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
--
vim.api.nvim_create_autocmd("FileType", {
  pattern = {
    "sql",
  },
  callback = function()
    vim.opt.commentstring = "-- %s"
  end,
})

vim.api.nvim_create_autocmd({ "FileType", "LspAttach" }, {
  pattern = {
    "*.rb",
    "*.erb",
  },
  callback = function()
    vim.diagnostic.diagnostic(false)
  end,
})

vim.api.nvim_create_autocmd("RecordingEnter", {
  callback = function()
    local lualine = require("lualine")
    lualine.refresh({
      place = { "statusline" },
    })
  end,
})

vim.api.nvim_create_autocmd("RecordingLeave", {
  callback = function()
    local timer = vim.loop.new_timer()
    timer:start(
      50,
      0,
      vim.schedule_wrap(function()
        local lualine = require("lualine")
        lualine.refresh({
          place = { "statusline" },
        })
      end)
    )
  end,
})
