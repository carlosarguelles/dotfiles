return {
  { "williamboman/mason-lspconfig.nvim", enabled = false },
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      inlay_hints = {
        enabled = false,
      },
      servers = {
        nil_ls = {
          autostart = true,
          cmd = { "/run/current-system/sw/bin/nil" },
        },
        emmet_language_server = {
          filetypes = { "css", "html", "markdown" },
        },
        tailwindcss = {
          filetypes_include = { "templ", "go", "elixir", "heex" },
        },
      },
    },
  },
}
