return {

	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},

	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"pyright",
					"docker_compose_language_service",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")

			-- Helper function to disable LSP formatting
			local disable_lsp_formatting = function(client)
				client.server_capabilities.documentFormattingProvider = false
				client.server_capabilities.documentRangeFormattingProvider = false
			end

			-- lua
			lspconfig.lua_ls.setup({
				on_attach = function(client, bufnr)
					disable_lsp_formatting(client)
				end,
			})

			-- python
			lspconfig.pyright.setup({
				on_attach = function(client, bufnr)
					disable_lsp_formatting(client)
				end,
			})

			-- docker
			lspconfig.docker_compose_language_service.setup({
				on_attach = function(client, bufnr)
					disable_lsp_formatting(client)
				end,
			})

			-- GO
			lspconfig.gopls.setup({
				on_attach = function(client, bufnr)
					disable_lsp_formatting(client)
				end,
			})

			vim.keymap.set("n", "H", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
