vim.cmd([[imap <silent><script><expr> <C-c> copilot#Accept('\<CR>')]])
vim.cmd([[let g:copilot_no_tab_map = v:true]])
-- vim.cmd([[
--   let g:copilot_filetypes = {
--     \ '*': v:false,
--     \ }
-- ]])
