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
    vim.diagnostic.disable()
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
    -- This is going to seem really weird!
    -- Instead of just calling refresh we need to wait a moment because of the nature of
    -- `vim.fn.reg_recording`. If we tell lualine to refresh right now it actually will
    -- still show a recording occuring because `vim.fn.reg_recording` hasn't emptied yet.
    -- So what we need to do is wait a tiny amount of time (in this instance 50 ms) to
    -- ensure `vim.fn.reg_recording` is purged before asking lualine to refresh.
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
