-- NAVIGATION
-- highlight multiple lines then move them up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- scroll half page and keep cursor in center
vim.keymap.set({ "n", "v" }, "<C-j>", "<C-d>zz", { desc = "Scroll down half page and center cursor" })
vim.keymap.set({ "n", "v" }, "<C-k>", "<C-u>zz", { desc = "Scroll up half page and center cursor" })

-- TEXT EDITING
-- CTRL-c and CTRL-v to copy and paste to clipboard
vim.keymap.set("v", "<C-c>", '"+y', { silent = true })
vim.keymap.set("n", "<C-v>", '"+p', { silent = true })

-- append line to previous line but keep cursor in same spot
-- vim.keymap.set("n", "J", "mzJ`z")

-- when searching string, keeps search term in the middle
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- replace all for the word you're currently on
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
