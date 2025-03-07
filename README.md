# Neovim Config Files

These are my files to configure Neovim

## Installation

1. Clone the repo

```sh
git clone https://github.com/nolanwinsman/neovim-config
```

## Getting Started

For Windows the below script will copy all the files to your Neovim config folder.

```sh
./setup.ps1
```

This configuration is not tested on Linux and I do not have a script to move the files to the current config directory. That being said I don't
see any reason this shouldn't work on Linux.

## [Plugins](docs/plugins.md)

This is an overview of all my plugins

## Lazy Setup

View `nvim/lua/nolan/plugins` for the complete list of all plugins excluding Lazy

run `:Lazy sync` to download/update all plugins

## [Cheatsheet](docs/cheatsheet.md)

This is a compilation of vim inputs I frequnetly use.

## Wanted Plugins

- undotree
- fugitive
- debugger

## Working Formatters

- Lua
- Markdown
- Typescript

## Required Installs

- npm
- go
- python/pip
- c

## Current Issues

- Mason install does not seem to be working perfectly. Sometimes LSP is not detected even though installed.

## Script Files

| Filename                               | Description                                                               |
| -------------------------------------- | ------------------------------------------------------------------------- |
| README.md                              | This file                                                                 |
| setup.ps1                              | Complete Windows 11 setup script to install all dependencies (Incomplete) |
| docs/                                  | Documentation folder                                                      |
| nvim/                                  | Neovim config folder                                                      |
| docs/cheatsheet.md                     | List of vim commands I use                                                |
| docs/dependencies.md                   | Things that need to be installed to use this config                       |
| docs/plugins.md                        | Detailed overview of all plugins used in config                           |
| docs/setup.md                          | Instructions on how to set things up                                      |
| nvim/init.lua                          | Init file                                                                 |
| nvim/lua/                              | lua folder                                                                |
| nvim/lua/nolan/                        | nolan folder that stores most config information                          |
| nvim/lua/nolan/init.lua                | Init file                                                                 |
| nvim/lua/nolan/lazy.lua                | Lazy plugin manager                                                       |
| nvim/lua/nolan/remap.lua               | My key remaps for vim (not including plugin remaps)                       |
| nvim/lua/nolan/set.lua                 | vim settings                                                              |
| nvim/lua/nolan/plugins/                | plugins folder                                                            |
| nvim/lua/nolan/plugins/alpha.lua       | alpha-nvim plugin for cool opening nvim screen                            |
| nvim/lua/nolan/plugins/colorscheme.lua | colorscheme and transparant background                                    |
| nvim/lua/nolan/plugins/conform.lua     | Conform plugin for text formatting                                        |
| nvim/lua/nolan/plugins/harpoon.lua     | Harpoon plugin to jump around files                                       |
| nvim/lua/nolan/plugins/lsp-config.lua  | LSP Config and Mason plugins                                              |
| nvim/lua/nolan/plugins/oil.lua         | Oil plugin for file tree and file management                              |
| nvim/lua/nolan/plugins/telescope.lua   | Telescope plugin for fuzzy finder                                         |
| nvim/lua/nolan/plugins/treesitter.txt  | Treesitter Plugin for syntax highlighting (not used)                      |
| nvim/lua/nolan/plugins/wakatime.lua    | Wakatime plugin for tracking my hours coding                              |

# Contact

Nolan Winsman - [@Github](https://github.com/nolanwinsman) - nolanwinsman@gmail.com

Project Link: [https://github.com/nolanwinsman/neovim-config](https://github.com/nolanwinsman/neovim-config)

# Contributers

- nolanwinsman
