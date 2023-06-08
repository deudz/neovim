require("mason").setup()
require("mason-lspconfig").setup {
  ensure_installed = { "lua_ls", "clangd", "cmake", "html", "cssls", "tsserver" }
}

local lsp = require('lspconfig')

lsp.lua_ls.setup{}
lsp.clangd.setup{}
lsp.cmake.setup{}
lsp.html.setup{}
lsp.cssls.setup{}
lsp.tsserver.setup{}
