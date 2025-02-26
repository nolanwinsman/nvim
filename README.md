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

| Filename  | Description                                                               |
| --------- | ------------------------------------------------------------------------- |
| config/   | Folder with all of the neovim config files                                |
| README.md | This file                                                                 |
| setup.ps1 | Complete Windows 11 setup script to install all dependencies (Incomplete) |

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
