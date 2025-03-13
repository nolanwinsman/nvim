return {
	-- Autocompletion
	"hrsh7th/nvim-cmp",
	event = "InsertEnter",
	dependencies = {
		-- LSP completion source
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-path", -- For file path completion
		"hrsh7th/cmp-nvim-lsp-signature-help", -- Show function signatures
	},
	config = function()
		local cmp = require("cmp")

		cmp.setup({
			completion = { completeopt = "menu,menuone,noinsert" },
			mapping = cmp.mapping.preset.insert({
				["<C-n>"] = cmp.mapping.select_next_item(),
				["<C-p>"] = cmp.mapping.select_prev_item(),
				["<C-b>"] = cmp.mapping.scroll_docs(-4),
				["<C-f>"] = cmp.mapping.scroll_docs(4),
				["<C-y>"] = cmp.mapping.confirm({ select = true }), -- Accept completion
				["<C-Space>"] = cmp.mapping.complete({}), -- Manually trigger completion
			}),
			sources = {
				{ name = "nvim_lsp" }, -- Get completions from LSP
				{ name = "path" }, -- Path completions
				{ name = "nvim_lsp_signature_help" }, -- Show function signature help
			},
		})
	end,
}
