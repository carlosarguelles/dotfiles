local function ts_utils(client, bufnr, opts)
  local nvim_lsp_ts_utils = require("nvim-lsp-ts-utils")

  nvim_lsp_ts_utils.setup({
    auto_inlay_hits = false
  })
  nvim_lsp_ts_utils.setup_client(client)

  vim.api.nvim_buf_set_keymap(bufnr, "n", "tso", ":TSLspOrganize<CR>", opts)
  vim.api.nvim_buf_set_keymap(bufnr, "n", "tsr", ":TSLspRenameFile<CR>", opts)
  vim.api.nvim_buf_set_keymap(bufnr, "n", "tsi", ":TSLspImportAll<CR>", opts)
end

return ts_utils
