local js_ft = function(bufnr)
  local uri = vim.fs.find({ "biome.json" }, {
    upward = true,
    type = "file",
    stop = vim.loop.os_homedir(),
    path = vim.fs.dirname(vim.api.nvim_buf_get_name(bufnr)),
  })[1]
  if uri == nil or uri == "" then
    return { "prettierd" }
  else
    return { "biome" }
  end
end

return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      javascript = js_ft,
      typescript = js_ft,
      javascriptreact = js_ft,
      typescriptreact = js_ft,
      json = js_ft,
      java = { "google-java-format" },
      templ = { "templ" },
      ocaml = { "ocamlformat" },
      astro = { "astro" },
    },
  },
}
