require("mason").setup()
require("mason-lspconfig").setup {
  ensure_installed = { "lua_ls", "clangd", "html", "cssls", "tsserver" }
}

require("neodev").setup()

local lsp = require('lspconfig')

lsp.clangd.setup{}
lsp.html.setup{}
lsp.cssls.setup{}
lsp.tsserver.setup{}
lsp.lua_ls.setup({
  settings = {
    Lua = {
      completion = {
        callSnippet = "Replace"
      }
    }
  }
})
