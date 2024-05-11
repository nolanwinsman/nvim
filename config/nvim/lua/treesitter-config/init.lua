-- nvim-treesitter configuration
require'nvim-treesitter.configs'.setup {
    -- List of parsers to install or "all" for all supported parsers
    ensure_installed = {
        "c",
        "lua",
        "vim",
        "python",
        "go",
        "bash",
        "css",
        "html",
        "javascript",
        "typescript",
        "java",
        "json",
        --"markdown",
        "rust",
        --"ruby",
    },

    -- Switches default parser package downloader to curl for Windows compatibility
    prefer_git = false,

    -- Install parsers asynchronously
    sync_install = false,

    -- Automatically install missing parsers when entering buffer
    -- Disable if you don't have `tree-sitter` CLI installed locally
    auto_install = true,

    -- List of parsers to ignore installing (for "all")
    -- ignore_install = { "javascript" }

    -- Highlight configuration
    highlight = {
        enable = true, -- Enable syntax highlighting

        -- Disable highlighting for large files exceeding 100 KB
        disable = function(lang, buf)
            local max_filesize = 100 * 1024 -- 100 KB
            local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
            if ok and stats and stats.size > max_filesize then
                return true
            end
            return false
        end,

        -- Set to `true` if you depend on 'syntax' being enabled (like for indentation)
        -- Using this option may slow down your editor and result in duplicate highlights
        additional_vim_regex_highlighting = false,
    },
}
