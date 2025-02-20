local map = vim.keymap.set
-- vim.g.mapleader = " "

-- NAVIGATION
-- highlight multiple lines then move them up and down
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

-- scroll half page and keep cursor in center
map({ "n", "v" }, "<C-j>", "<C-d>zz", { desc = "Scroll down half page and center cursor" }
map({ "n", "v" }, "<C-k>", "<C-u>zz", { desc = "Scroll up half page and center cursor" }

-- TEXT EDITING
-- CTRL-c and CTRL-v to copy and paste to clipboard
map("v", "<C-c>", '"+y', { silent = true })
map("n", "<C-v>", '"+p', { silent = true })

-- append line to previous line but keep curser in same spot
map("n", "J", "mzJ`z")

-- when searching string, keeps search term in the middle
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")

-- replace all for the word you're currently on
map("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
