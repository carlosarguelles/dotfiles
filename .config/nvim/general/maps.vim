let mapleader = " "

map <M-t> :tabedit<CR>
map <M-Left> :BufferLineCyclePrev<CR>
map <M-Right> :BufferLineCycleNext<CR>
map <M-w> :bd<CR>

noremap <Leader>y "*y
noremap <Leader>Y "*yy
noremap <Leader>p "*p
noremap <Leader>P "*P

nmap <leader>so :so%<CR>
imap jk <Esc>

nnoremap <Leader>t :NvimTreeToggle<CR>

" Append ; or , to the end of the current line
nnoremap <leader>; m`A;<Esc>``
nnoremap <leader>, m`A,<Esc>``
