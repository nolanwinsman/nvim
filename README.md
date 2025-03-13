# Neovim Config Files

These are my files to configure Neovim

### [Install External Dependencies](docs/dependencies.md)

External Requirements:

- Basic utils: `git`, `make`, `unzip`, C Compiler (`gcc`)
- [ripgrep](https://github.com/BurntSushi/ripgrep#installation)
- Clipboard tool (xclip/xsel/win32yank or other depending on the platform)
- A [Nerd Font](https://www.nerdfonts.com/): optional, provides various icons
  - if you have it set `vim.g.have_nerd_font` in `init.lua` to true
- Emoji fonts (Ubuntu only, and only if you want emoji!) `sudo apt install fonts-noto-color-emoji`
- Language Setup:
  - If you want to write Typescript, you need `npm`
  - If you want to write Golang, you will need `go`
  - etc.

### Install Kickstart

> **NOTE** > [Backup](#FAQ) your previous configuration (if any exists)

Neovim's configurations are located under the following paths, depending on your OS:

| OS                   | PATH                                      |
| :------------------- | :---------------------------------------- |
| Linux, MacOS         | `$XDG_CONFIG_HOME/nvim`, `~/.config/nvim` |
| Windows (cmd)        | `%localappdata%\nvim\`                    |
| Windows (powershell) | `$env:LOCALAPPDATA\nvim\`                 |

<details><summary> Linux and Mac </summary>

```sh
git clone https://github.com/nolanwinsman/nolanw.nvim.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim
```

</details>

<details><summary> Windows </summary>

If you're using `cmd.exe`:

```
git clone https://github.com/nolanwinsman/nolanw.nvim.git "%localappdata%\nvim"
```

If you're using `powershell.exe`

```
git clone https://github.com/nolanwinsman/nolanw.nvim.git "${env:LOCALAPPDATA}\nvim"
```

</details>

### Post Installation

Start Neovim

```sh
nvim
```

That's it! Lazy will install all the plugins you have. Use `:Lazy` to view
the current plugin status. Hit `q` to close the window.

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

# Credits

- A fair amount of this README is copied from ![](https://github.com/nvim-lua/kickstart.nvim)

A lot of the configuration is inspired and copied from

- [ThePrimeagen](https://www.youtube.com/@ThePrimeagen)'s Neovim setup video ![](https://www.youtube.com/watch?v=w7i4amO_zaE) although a fair amount of the setup in this Youtube video is outdated.
- [TJ DeVries](https://www.youtube.com/@teej_dv). Many of his Neovim setup videos helped me configure my setup.
