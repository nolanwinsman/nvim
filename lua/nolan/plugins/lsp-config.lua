return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},

	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = { "williamboman/mason.nvim" }, -- Ensure Mason is loaded first
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "pyright", "gopls" },
				automatic_installation = true,
			})
		end,
	},

	{
		"neovim/nvim-lspconfig",
		dependencies = { "williamboman/mason-lspconfig.nvim" }, -- Ensure Mason-LSPConfig loads first
		config = function()
			local lspconfig = require("lspconfig")

			-- Disable LSP formatting
			local disable_lsp_formatting = function(client)
				client.server_capabilities.documentFormattingProvider = false
				client.server_capabilities.documentRangeFormattingProvider = false
			end

			-- Lua LSP
			lspconfig.lua_ls.setup({
				on_attach = function(client, _)
					disable_lsp_formatting(client)
				end,
				settings = {
					Lua = {
						diagnostics = { globals = { "vim" } }, -- Fix undefined 'vim' warning
					},
				},
			})

			-- Python
			lspconfig.pyright.setup({
				on_attach = function(client, _)
					disable_lsp_formatting(client)
				end,
			})

			-- Go
			lspconfig.gopls.setup({
				on_attach = function(client, _)
					disable_lsp_formatting(client)
				end,
			})

			-- Keybindings
			vim.keymap.set("n", "H", vim.lsp.buf.hover, {})
			--  Jump to function/class definition
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
