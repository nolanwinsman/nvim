-- General Settings file


local g = vim.g
local o = vim.o
local opt = vim.opt

-- Basic Settings
opt.relativenumber = true -- show relative line numbers

-- Coloscheme
o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])


-- Indent Blankline setup
-- opt.list = true
-- opt.listchars:append "space:⋅"
-- require("indent_blankline").setup {
-- 	show_end_of_line = true,
-- 	space_char_blankline = " ",
-- }

-- File Explorer nvim-tree
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1

require("nvim-tree").setup()

require'nvim-treesitter.configs'.setup {
	highlight = {
		enable = true,
	},
}

-- Ignore git files
-- let g:telescope_exclude_files = { '*.git' }
-- Add projects capability to telescope
require('telescope').load_extension('projects')

require('gitsigns').setup()

-- nvim-notify
-- vim.notify = require("notify")
