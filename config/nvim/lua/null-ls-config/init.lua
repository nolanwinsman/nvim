local null_ls = require("null-ls")

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics

local A = vim.api

local augroup = A.nvim_create_augroup("LspFormatting", {})
require("null-ls").setup({
	sources = {
		formatting.stylua,
		formatting.prettier,
		-- formatting.goimports,
		formatting.yapf,
		formatting.rustfmt,
		formatting.markdownlint,
	},
	-- you can reuse a shared lspconfig on_attach callback here
	on_attach = function(client, bufnr)
		if client.supports_method("textDocument/formatting") then
			A.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
			A.nvim_create_autocmd("BufWritePre", {
				group = augroup,
				buffer = bufnr,
				callback = function()
					-- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr}) instead
					-- vim.lsp.buf.formatting_sync()
					vim.lsp.buf.format({ bufnr = bufnr })
				end,
			})
		end
	end,
})
