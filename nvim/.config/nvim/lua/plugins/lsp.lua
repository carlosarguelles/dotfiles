return {
  "neovim/nvim-lspconfig",
  ---@class PluginLspOpts
  opts = {
    inlay_hints = {
      enabled = false,
    },
    servers = {
      emmet_language_server = {
        filetypes = {
          "css",
          "eruby",
          "html",
          "javascript",
          "javascriptreact",
          "less",
          "sass",
          "scss",
          "pug",
          "typescriptreact",
          "templ",
          "elixir",
          "heex",
        },
      },
      htmx = {
        filetypes = { "html", "templ" },
      },
      pyright = {
        python = {
          pythonPath = "/opt/homebrew/bin/python3.10",
        },
      },
      tailwindcss = {
        filetypes_include = { "templ", "go", "elixir", "heex" },
      },
    },
  },
}
