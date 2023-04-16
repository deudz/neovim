local status_mason, mason = pcall(require, "mason")
local status_mason_lsp, mason_lspconfig = pcall(require, "mason-lspconfig")
local status_lspconf, lspconfig = pcall(require, "lspconfig")
local status_cmp, cmp = pcall(require, "cmp")
if not status_mason and not status_mason_lsp and not status_lspconf and not status_cmp then
    return
end

mason.setup()
mason_lspconfig.setup({
    ensure_installed = { "cssls", "html", "lua_ls", "ruby_ls", "rust_analyzer", "tsserver" }
})

lspconfig.lua_ls.setup{}
lspconfig.cssls.setup{}
lspconfig.ruby_ls.setup{}
lspconfig.html.setup{}
lspconfig.rust_analyzer.setup{}
lspconfig.tsserver.setup{}


cmp.setup({
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered()
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
  }),
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
    { name = 'buffers' }
  }),
  cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
      { name = 'path' }
    }, {
      {name = 'cmdline' }
    })
  })
})
