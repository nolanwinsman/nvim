# Neovim Cheat Sheet for this Configuration

# Text Editing

| Mode |      Key |                                                    Description |
| ---- | -------: | -------------------------------------------------------------: |
| `v`  |      `J` |                       Select multiple lines and move them down |
| `v`  |      `K` |                         Select multiple lines and move them up |
| `n`  | `CTRL j` |                Scroll down half page and keep cursor in center |
| `n`  | `CTRL k` |                  Scroll up half page and keep cursor in center |
| `v`  | `CTRL c` |                                              copy to clipboard |
| `n`  | `CTRL v` |                                           paste from clipboard |
| `J`  |      `n` | append below line to current line but keep cursor in same spot |

# File Management

## Oil

| Mode |       Key |                             Description |
| ---- | --------: | --------------------------------------: |
| `n`  |       `-` |                    Toggle Open Oil tree |
| `n`  | `Space -` | Toggle Open Oil tree in floating window |

## Telescope

| Mode |        Key |                                                                                                                                                     Description |
| ---- | ---------: | --------------------------------------------------------------------------------------------------------------------------------------------------------------: |
| `n`  | `Space ff` |                                                                                              Opens a Telescope picker to search and find files in your project. |
| `n`  | `Space fg` | Opens a Telescope picker that allows you to perform a live grep search across your project's files. It's useful for finding occurrences of a string or pattern. |
| `n`  | `Space fb` |                                   Opens a Telescope picker that lists all open buffers. It allows you to quickly switch between different buffers (open files). |
| `n`  | `Space ff` |                               Opens a Telescope picker that searches through Neovim's help tags. It's useful for quickly finding and reading help documentation |

## Harpoon

After opening the Harpoon GUI, it's essentially a mini vim terminal so use `dd` `j` `k` to delete and
move files around. The order does matter. To close the Harpoon GUI and save the edits to file order
and such, input `:wq`

| Mode |       Key |                          Description |
| ---- | --------: | -----------------------------------: |
| `n`  | `Space a` |                  add file to Harpoon |
| `n`  |  `CRTL e` | see files in harpoon and manage them |
| `n`  |  `CRTL h` |           jump to first harpoon file |
| `n`  |  `CRTL t` |          jump to second harpoon file |
| `n`  |  `CRTL n` |           jump to third harpoon file |
| `n`  |  `CRTL s` |          jump to fourth harpoon file |

# LSP

| Mode |        Key |                                       Description |
| ---- | ---------: | ------------------------------------------------: |
| `n`  |        `H` | shows basic hover information for a piece of code |
| `n`  |       `gd` |                    jump to definition of function |
| `n`  | `Space ca` |                              display code actions |

# Text Formatting

| Mode |       Key |              Description |
| ---- | --------: | -----------------------: |
| `n`  | `Space l` |              format file |
| `n`  |      `:w` | saving file formats file |

# Debugger
