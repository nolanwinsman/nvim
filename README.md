# neovim-config

This is my neovim configuration files with some simple scripts to copy the config files to the neovim install. 

The configuration has some basic plugins and settings for my personal needs.

I primarily program on Windows for work so this is designed to work with Windows 11.


## Installation

1. Clone the repo
```sh
git clone https://github.com/nolanwinsman/neovim-config
```

## Getting Started

For Windows

```sh
./setup.ps1
```

Linux is currently not supported.

# Contact

Nolan Winsman - [@Github](https://github.com/nolanwinsman) - nolanwinsman@gmail.com

Project Link: [https://github.com/nolanwinsman/neovim-config](https://github.com/nolanwinsman/neovim-config)

# Contributers
- nolanwinsman

## Script Files

| Filename      |  Description
| --------------------------------------------------------------------------------------------------------------- |
| config/       | Folder with all of the neovim config files                                                      |
| README.md     | This file                                                                                       |
| refresh.cmd   | Batch script to simply copy the contents of config/ to the neovim install folder on Windows 11. |
| setup.ps1     | Complete Windows 11 setup script to install all dependencies (Incomplete)                       |

## Neovim Config Files

These are all of the files inside of the `config/nvim/` folder which store the neovim configurations including plugins, keybinds, settings and more.

| Filename                            | Description                                                                     |
| ----------------------------------- | ------------------------------------------------------------------------------- |
| init.lua                            | Main initialization script for Neovim                                           |
| lua/                                | Core Lua directory for Neovim configuration.                                    |
| lua/keybinds.lua                    | Neovim keybindings configuration.                                               |
| lua/settings.lua                    | Neovim general settings configuration.                                          |
| lua/bufferline-config/              | Neovim bufferline plugin configuration.                                         |
| lua/lsp-config/                     | Neovim Language Server Protocol (LSP) configuration.                            |
| lua/lualine-config/                 | Neovim lualine statusline configuration.                                        |
| lua/mason-config/                   | Neovim mason plugin configuration.                                              |
| lua/null-ls-config/                 | Neovim null-ls plugin configuration.                                            |
| lua/plugins/                        | Directory containing various Neovim plugins.                                    |
| lua/treesitter-config/              | Neovim treesitter syntax highlighting configuration.                            |
| lua/bufferline-config/init.lua      | Initialization script for Neovim bufferline configuration.                      |
| lua/lsp-config/language-servers.lua | List of language servers configured for Neovim LSP.                             |
| lua/lsp-config/null-ls.lua          | Configuration script for using null-ls within Neovim LSP.                       |
| lua/lsp-config/nvim-cmp.lua         | Configuration script for nvim-cmp within Neovim LSP.                            |
| lua/lualine-config/init.lua         | Initialization script for Neovim lualine statusline configuration.              |
| lua/mason-config/init.lua           | Initialization script for Neovim mason plugin configuration.                    |
| lua/null-ls-config/init.lua         | Initialization script for Neovim null-ls plugin configuration.                  |
| lua/plugins/alpha-nvim.lua          | Configuration script for alpha-nvim plugin within Neovim.                       |
| lua/plugins/bufferline.lua          | Configuration script for bufferline plugin within Neovim.                       |
| lua/plugins/fzf-lua.lua             | Configuration script for fzf-lua plugin within Neovim.                          |
| lua/plugins/init.lua                | Initialization script for various plugins within Neovim.                        |
| lua/plugins/null-ls.lua             | Configuration script for null-ls plugin within Neovim.                          |
| lua/plugins/project.lua             | Configuration script for project plugin within Neovim.                          |
| lua/plugins/telescope.lua           | Configuration script for telescope plugin within Neovim.                        |
| lua/plugins/treesitter.lua          | Configuration script for treesitter plugin within Neovim.                       |
| lua/treesitter-config/init.lua      | Initialization script for Neovim treesitter syntax highlighting configuration.  |