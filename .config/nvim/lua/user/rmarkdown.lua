vim.cmd [[
  let g:pandoc#modules#disabled = ["folding", "spell"]
  let g:pandoc#syntax#conceal#use = 0

  autocmd Filetype rmd map <F5> :silent !Rscript -e 'library(rmarkdown);render("%")'<CR>
]]
