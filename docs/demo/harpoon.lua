-- copied from harpoon config. Example for some cool vim motions
return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" },

	config = function()
		local harpoon = require("harpoon")
		-- REQUIRED
		harpoon:setup()
		-- 'Space a' to add file to Harpoon
		vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)

		-- 'CTRL e' to see the files in harpoon and manage them
		vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

        




		-- 'CTRL h' to jump to first harpoon file
		vim.keymap.set("n", "<C-h>", function() harpoon:list():select(1) end)

        -- f h r <new letter>
        -- new letters <C-t> <C-n> <C-s>
        -- CTRL a increment (1)

	    -- paste keymaps here	






		-- Toggle previous & next buffers stored within Harpoon list
		vim.keymap.set("n", "<C-S-P>", function()
			harpoon:list():prev()
		end)
		vim.keymap.set("n", "<C-S-N>", function()
			harpoon:list():next()
		end)
	end,
}
