return {
	"morhetz/gruvbox",
	priority = 1000,
	config = function()
		-- Enable transparent background (if supported by your Gruvbox fork)
		vim.g.gruvbox_transparent_bg = 1

		-- Load colorscheme
		vim.cmd([[colorscheme gruvbox]])

		-- Override specific highlight groups to ensure transparency
		vim.cmd([[
      highlight Normal       guibg=NONE ctermbg=NONE
      highlight NonText      guibg=NONE ctermbg=NONE
      highlight NormalNC     guibg=NONE ctermbg=NONE
      highlight EndOfBuffer  guibg=NONE ctermbg=NONE
      highlight LineNr       guibg=NONE ctermbg=NONE
      highlight SignColumn   guibg=NONE ctermbg=NONE
    ]])
	end,
}
