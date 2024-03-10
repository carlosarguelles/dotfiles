return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      javascript = { { "prettierd", "biome" } },
      typescript = { { "prettierd", "biome" } },
      javascriptreact = { { "prettierd", "biome" } },
      typescriptreact = { { "prettierd", "biome" } },
      json = { { "prettierd", "biome" } },
      java = { "google-java-format" },
      templ = { "templ" },
      ocaml = { "ocamlformat" },
      astro = { "astro" },
    },
  },
}
