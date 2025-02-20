return {

	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local conform = require("conform")

		conform.setup({
			formatters_by_ft = {
				lua = { "stylua" },
				svelte = { "prettierd", "prettier" },
				javascript = { "prettierd", "prettier" },
				typescript = { "prettierd", "prettier" },
				javascriptreact = { "prettierd", "prettier" },
				typescriptreact = { "prettierd", "prettier" },
				json = { "prettierd", "prettier" },
				java = { "google-java-format" },
				kotlin = { "ktlint" },
				ruby = { "standardrb"},
				markdown = { "prettierd", "prettier" },
				html = { "htmlbeautifier"},
				bash = { "beautysh" },
				rust = { "rustfmt" },
				yaml = { "yamlfix" },
				css = { "prettierd", "prettier" },
				sh = { "shellcheck" },
				go = { "gofmt" },
				xml = { "xmllint" },

			},
			format_options = {
				svelte = { stop_after_first = true },
				javascript = { stop_after_first = true },
				typescript = { stop_after_first = true },
				javascriptreact = { stop_after_first = true },
				typescriptreact = { stop_after_first = true },
				json = { stop_after_first = true },
				markdown = { stop_after_first = true },
				css = { stop_after_first = true },

			},
		})

			-- format on save
			vim.api.nvim_create_autocmd("BufWritePre", {
				pattern = "*",
				callback = function(args)
					require("conform").format({
						bufnr = args.buf,
						timeout_ms = 5000,
					})
				end,
			})

			vim.keymap.set({ "n", "v" }, "<leader>l", function()
				conform.format({
					lsp_fallback = true,
					async = false,
					timeout_ms = 5000,
				})
			end, { desc = "Format file or range" })
		end,

}
