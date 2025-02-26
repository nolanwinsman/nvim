# Neovim Config Files

These are my files to configure Neovim

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

## Lazy Setup

## [Plugins](docs/plugins.md)

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

## Script Files

| Filename    | Description                                                                                     |
| ----------- | ----------------------------------------------------------------------------------------------- |
| config/     | Folder with all of the neovim config files                                                      |
| README.md   | This file                                                                                       |
| refresh.cmd | Batch script to simply copy the contents of config/ to the neovim install folder on Windows 11. |
| setup.ps1   | Complete Windows 11 setup script to install all dependencies (Incomplete)                       |

## Neovim Config Files

These are all of the files inside of the `config/nvim/` folder which store the neovim configurations including plugins, keybinds, settings and more.

| Filename | Description                           |
| -------- | ------------------------------------- |
| init.lua | Main initialization script for Neovim |

# Contact

Nolan Winsman - [@Github](https://github.com/nolanwinsman) - nolanwinsman@gmail.com

Project Link: [https://github.com/nolanwinsman/neovim-config](https://github.com/nolanwinsman/neovim-config)

# Contributers

- nolanwinsman
