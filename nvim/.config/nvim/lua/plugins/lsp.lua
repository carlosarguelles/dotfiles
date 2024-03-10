return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "pmizio/typescript-tools.nvim",
    init = function()
      require("typescript-tools").setup({
        on_attach = require("lazyvim.util").lsp.on_attach(function(client, buffer)
          client.server_capabilities.documentFormattingProvider = false
          client.server_capabilities.documentRangeFormattingProvider = false
          vim.keymap.set("n", "tso", ":TSToolsOrganizeImports<CR>", { buffer = buffer, desc = "Organize Imports" })
          vim.keymap.set("n", "tsr", ":TSToolsRenameFile<CR>", { desc = "Rename File", buffer = buffer })
          vim.keymap.set("n", "tsi", ":TSToolsAddMissingImports<CR>", { desc = "Rename File", buffer = buffer })
        end),
      })
    end,
  },
  ---@class PluginLspOpts
  opts = {
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
        filetypes_include = { "templ", "go" },
      },
    },
  },
}
