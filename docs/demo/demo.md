# Demo

I am giving a Demo on Neovim and my config to my alma mater next week. I thought it would be worthwhile to write a small script for this demo.

## Introduction

- What's the most important thing in
- You don't need to use Vim to be a great programmer.
- My history with Vim
- I am still a novice

## 1. What is Vim?

Vim is a Text Editor/IDE. A place you type code

#### Difference Between Vim and Neovim

Vi created in the 70s, Vim created in the 90s, Neovim created in the 2010s.

1. Vim/Neovim very similar upon initial download
2. Neovim is better with configuration (written in Lua vs VimScript)
3. Will be refering to it as Vim even though using Neovim

## 2. Vim Motions

**Note:** might need to CTRL **+** to increase font size

- tell them Vim motions are life changing

#### h j k l for moving around

#### e b

jump between words

#### 0 $

jump to beginning of line and end of line

#### yy dd

- numbers 5yy 5dd
- explain relative line numbers

#### a i A I

#### Different Modes

- Insert Mode
- Normal Mode
- Visual Mode
- Command Mode
  - how to save
  - how to quit

#### Open `harpoon.lua` in the demo folder and show off cool vim motion

## 3. Bouncing Between Files

1. Show Slow Annoying Example (bouncing between two files)

- Example in `go_project`
- add comments to...
- `vim main.go`
- `vim util/world.go`

### Show File Navigation Plugins

2. Show Oil "-"

- explain how Oil is a Vim buffer
- create a file in oil
- delete a file in oil
- copy a file in oil

3. Show the Fuzzy Finder

- find `world.go` and `main.go`

4. Show Harpoon

| Command | What Do             |
| ------- | ------------------- |
| SPACE a | Add file to Harpoon |
| CTRL h  | jump to first file  |
| CTRL t  | jump to second file |
| CTRL e  | see Harpoon files   |

## 4. Auto Formatting'

- fuzzy find `format.go` the do **SPACE l** to format code

Then highlight five lines of code and use **J K** to move the lines around

## 5. Config/Plugins 

- Open root `/nvim/` folder
- Open `keymaps.lua`
- Open `/plugins/` folder to briefly explain each plugin and how it works

## 6. Conclusion


