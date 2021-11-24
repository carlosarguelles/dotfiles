vim.o.completeopt = "menu,menuone,noselect" -- noinsert
vim.o.runtimepath = vim.o.runtimepath .. ',/Users/carlos/.config/nvim/snippets,'
require("luasnip/loaders/from_vscode").load()

local lspkind = require("lspkind")

local cmp = require("cmp")

cmp.setup({
  snippet = {
    expand = function(args)
      require("luasnip").lsp_expand(args.body)
    end,
  },
  formatting = {
    format = lspkind.cmp_format({with_text = true, maxwidth = 50})
  },
  mapping = {
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.close(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
  },
  sources = {
    { name = 'nvim_lsp' },
    { name = 'path' },
    { name = 'luasnip' },
    { name = 'buffer', keyword_length = 5 },
  }
})

vim.cmd [[
  autocmd FileType sql,mysql,plsql lua require('cmp').setup.buffer({ sources = {{ name = 'vim-dadbod-completion' }} })
  let g:vim_dadbod_completion_mark = 'DB'
]]


vim.cmd [[
  autocmd FileType TelescopePrompt lua require("cmp").setup.buffer({ enabled = false })
]]

vim.cmd [[
  autocmd FileType markdown lua require("cmp").setup.buffer({ name = 'buffer', keyword_length = 5 })
]]
