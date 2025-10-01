-- pyright.lua
return {
    cmd = { "pyright-langserver", "--stdio" }, -- Pyright command
    filetypes = { "python" },                 -- Python files
    root_markers = { ".git", "pyproject.toml", "setup.py", "requirements.txt" }, 
    settings = {
        python = {
            analysis = {
                typeCheckingMode = "basic", -- options: off, basic, strict
                autoSearchPaths = true,
                useLibraryCodeForTypes = true,
            },
        },
    },
    single_file_support = true,
    log_level = vim.lsp.protocol.MessageType.Warning, -- similar to your Lua config
}
