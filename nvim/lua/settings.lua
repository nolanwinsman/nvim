local g = vim.g
local o = vim.o
local opt = vim.opt

-- Basic settings
opt.relativenumber   = true -- show line numbers

---
-- Colorscheme
---
o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])


-- Indent Blankline setup
opt.list = true
opt.listchars:append "space:⋅"
require("indent_blankline").setup {
    show_end_of_line = true,
    space_char_blankline = " ",
}

-- File Explorer nvim-tree
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1

require("nvim-tree").setup()

require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
  },
}

-- Add projects capability to telescope
require('telescope').load_extension('projects')

telescope.setup {
  extensions = {
    file_browser = {
      hidden = true,
      respect_gitignore = true
    },
  },
}

require('gitsigns').setup()



