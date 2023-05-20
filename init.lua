require('plugins')
require('lsp-config')
require('nvim-config')
require('map')
require('packer_bootstrap')

if vim.g.neovide then
  require('neovide')
end
