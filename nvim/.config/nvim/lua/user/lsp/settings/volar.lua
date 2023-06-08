local nvim_lsp = require("lspconfig")

return {
	root_dir = nvim_lsp.util.root_pattern({ "vite.config.js", "vue.config.js", "vite.config.ts", "vue.config.ts", "nuxt.config.ts", "nuxt.config.js" }),
  init_options = {
    typescript = {
        tsdk = "/usr/local/lib/node_modules/typescript/lib"
    }
  }
}
