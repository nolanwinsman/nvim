return {
	"karb94/neoscroll.nvim",
	opts = {},
	config = function()
		require("neoscroll").setup({
			-- Keep everything default
			mappings = {
				"<C-u>",
				"<C-d>",
				"<C-b>",
				"<C-f>",
				"<C-y>",
				"<C-e>",
				"zt",
				"zz",
				"zb",
			},
		})
		local neoscroll = require("neoscroll")

		-- Scroll half page down and keep the cursor centered
		vim.keymap.set({ "n", "v" }, "<C-j>", function()
			neoscroll.scroll(vim.wo.scroll, { move_cursor = true, duration = 35 }) -- 50% faster scrolling
			vim.cmd("normal! zz") -- Keep cursor centered after scroll
		end, { desc = "Smooth scroll down half page and center cursor" })

		-- Scroll half page up and keep the cursor centered
		vim.keymap.set({ "n", "v" }, "<C-k>", function()
			neoscroll.scroll(-vim.wo.scroll, { move_cursor = true, duration = 35 }) -- 50% faster scrolling
			vim.cmd("normal! zz") -- Keep cursor centered after scroll
		end, { desc = "Smooth scroll up half page and center cursor" })
	end,
}
