local navic = require("nvim-navic")

local on_attach = function(client, bufnr)
  -- Setup keymaps or other LSP features here

  -- Attach navic if supported
  if client.server_capabilities.documentSymbolProvider then
    navic.attach(client, bufnr)
  end
end

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require('lspconfig').clangd.setup({
  on_attach = on_attach,
  capabilities = capabilities,
})
