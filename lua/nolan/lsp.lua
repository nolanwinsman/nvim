-- Enable LSP servers
vim.lsp.enable({
    "gopls",
    "lua_ls",
    "pyright",
})

-- Diagnostic configuration
vim.diagnostic.config({
    virtual_lines = true,
    underline = true,
    update_in_insert = false,
    severity_sort = true,
    float = {
        border = "rounded",
        source = true,
    },
    signs = {
        text = {
            [vim.diagnostic.severity.ERROR] = "E", -- Error
            [vim.diagnostic.severity.WARN]  = "W", -- Warning
            [vim.diagnostic.severity.INFO]  = "I", -- Info
            [vim.diagnostic.severity.HINT]  = "H", -- Hint
        },
        numhl = {
            [vim.diagnostic.severity.ERROR] = "ErrorMsg",
            [vim.diagnostic.severity.WARN]  = "WarningMsg",
        },
    },
})

-- Keymaps
local opts = { noremap = true, silent = true }
vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, opts) -- jump to definition
vim.keymap.set("n", "H", vim.lsp.buf.hover, opts)              -- hover doc
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts) -- code actions
