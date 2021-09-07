" if !exists('g:loaded_completion') | finish | endif

" set completeopt=menuone,noinsert,noselect

" inoremap <expr> <C-Space> pumvisible()
" inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
" inoremap <expr> <S-tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" let g:completion_confirm_key = ""
" imap <expr> <CR> pumvsible() ? complete_info()["selected"] != "-1" ?
"               \ "\<Plug>(completion_confirm_completion)" : "\<C-e>\<CR>" : "\<CR>":

" let g:completion_timer_cycle = 10

" set shortmess+=c
