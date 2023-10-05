require('mason').setup()
require('mason-lspconfig').setup()

-- Language Servers
require'lspconfig'.pyright.setup{} -- Python Highlighter

-- Formatters
require'lspconfig'.gopls.setup{} -- GoLang formatter


