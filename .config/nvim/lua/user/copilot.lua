vim.cmd [[
  imap <silent><script><expr> <C-c> copilot#Accept('\<CR>')
  let g:copilot_no_tab_map = v:true
  let g:copilot_filetypes = {
    \ '*': v:false,
    \ }
]]
