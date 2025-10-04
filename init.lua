-- init.lua

-- Plugin manager / plugins
require("nolan.lazy")

-- Load keymaps
require("nolan.remap")

-- Load other settings
require("nolan.set")  -- if you have general settings

-- Netrw Settings
vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25