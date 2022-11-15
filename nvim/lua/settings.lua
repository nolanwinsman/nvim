local g = vim.g
local o = vim.o
local opt = vim.opt

-- Basic settings
opt.number = true -- show line numbers

o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])


-- Indent Blankline setup
opt.list = true
opt.listchars:append "space:⋅"
require("indent_blankline").setup {
    show_end_of_line = true,
    space_char_blankline = " ",
}


