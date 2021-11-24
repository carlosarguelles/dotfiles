let mapleader = " "

map <M-Left> :BufferLineCyclePrev<CR>
map <M-Right> :BufferLineCycleNext<CR>
map <M-w> :bd<CR>
nmap ss :split<Return><C-w>w
nmap sv :vsplit<Return><C-w>w

noremap <Leader>y "*y
noremap <Leader>Y "*yy
noremap <Leader>p "*p
noremap <Leader>P "*P

nmap <leader>so :so%<CR>

nnoremap <Leader>t :NvimTreeToggle<CR>

nnoremap <leader>; m`A;<Esc>``
nnoremap <leader>, m`A,<Esc>``

"SQL UI
nnoremap <silent> <leader>du :DBUIToggle<CR>
nnoremap <silent> <leader>df :DBUIFindBuffer<CR>
nnoremap <silent> <leader>dr :DBUIRenameBuffer<CR>
nnoremap <silent> <leader>dl :DBUILastQueryInfo<CR>
let g:db_ui_save_location = '~/.config/db_ui'

" Telescope
nnoremap <silent> <C-p> <cmd>Telescope find_files<cr>
nnoremap <silent> ;g  <cmd>Telescope live_grep<cr>
nnoremap <silent> \\ <cmd>Telescope buffers<cr>
nnoremap <silent> ;; <cmd>Telescope help_tags<cr>

nnoremap <silent> <leader>h <cmd>lua require("harpoon.mark").add_file()<cr>
nnoremap <silent> ;h <cmd>:lua require("harpoon.ui").toggle_quick_menu()<cr>

nnoremap <silent> <leader>1 <cmd>lua require("harpoon.ui").nav_file(1)<cr>
nnoremap <silent> <leader>2 <cmd>lua require("harpoon.ui").nav_file(2)<cr>
nnoremap <silent> <leader>3 <cmd>lua require("harpoon.ui").nav_file(3)<cr>
nnoremap <silent> <leader>4 <cmd>lua require("harpoon.ui").nav_file(4)<cr>


