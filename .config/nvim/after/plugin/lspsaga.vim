" if !exists('g:loaded_lspsaga')
"   finish
" endif

" lua <<EOF
" local saga = require 'lspsaga'
" saga.init_lsp_saga {
"   error_sign = '',
"   warn_sign = '',
"   hint_sign = '',
"   infor_sign = '',
"   border_style = "round",
" }
" EOF

" nnoremap <silent> <C-n> <Cmd>Lspsaga diagnostic_jump_next<CR>

" nnoremap <silent>sd :Lspsaga preview_definition<CR>

" nnoremap <leader>K :Lspsaga hover_doc<CR>
" nnoremap <silent> <C-f> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<CR>
" nnoremap <silent> <C-b> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<CR>

" inoremap <silent> <C-k> <Cmd>Lspsaga signature_help<CR>
" nnoremap <silent> gh <Cmd>Lspsaga lsp_finder<CR>
" nnoremap <silent><leader>ca :Lspsaga code_action<CR>
" vnoremap <silent><leader>ca :<C-U>lua require('lspsaga.codeaction').range_code_action()<CR>
" nnoremap <leader>rn <Cmd>Lspsaga rename<CR>
