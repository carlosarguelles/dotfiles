vim.g["pandoc#modules#disabled"] = {"folding", "spell"}
vim.g["pandoc#syntax#conceal#use"] = 0

vim.cmd [[
  autocmd Filetype rmd map <F5> :silent !Rscript -e 'library(rmarkdown);render("%")'<CR>
]]
