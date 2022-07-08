local preq = require('utils').preq
preq('lspconfig')
-- require('lspconfig')

preq('plugins.lsp.lsp-installer')
preq('plugins.lsp.handlers').setup()

-- require('plugins.lsp.lsp-installer')
-- require('plugins.lsp.handlers').setup()
