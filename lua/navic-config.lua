local navic = require("nvim-navic")

-- Define your on_attach callback
local on_attach = function(client, bufnr)
  -- Example: setup keymaps or LSP-related config here

  -- Attach navic if supported by this LSP
  if client.server_capabilities.documentSymbolProvider then
    navic.attach(client, bufnr)
  end
end

-- Capabilities (for nvim-cmp completion)
local capabilities = require('cmp_nvim_lsp').default_capabilities()

vim.lsp.config.lua_ls = {
  cmd = { "lua-language-server" },
  filetypes = { "lua" },
  name = "lua_ls",
  root_markers = { ".luarc.json", ".luarc.jsonc", ".luacheckrc", ".stylua.toml", "stylua.toml", "selene.toml", "selene.yml", ".git" },
}

vim.lsp.enable('lua_ls')
