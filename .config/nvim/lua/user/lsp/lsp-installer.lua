local lsp_installer_ok, lsp_installer = pcall(require, "nvim-lsp-installer")
if not lsp_installer_ok then
	return
end

local lsp_ok, lspconfig = pcall(require, "lspconfig")
if not lsp_ok then
	return
end

local servers = { "diagnosticls", "tsserver", "sumneko_lua", "volar" }

lsp_installer.setup {
  ensure_installed = servers
}

for _, server in pairs(servers) do
  local opts = {
    on_attach = require("user.lsp.handlers").on_attach,
    capabilities = require("user.lsp.handlers").capabilities,
  }

  local has_custom_opts, custom_opts = pcall(require, "user.lsp.settings" .. server)

  if has_custom_opts then
    opts = vim.tbl_deep_extend("force", custom_opts, opts)
  end

  lspconfig[server].setup(opts)
end
