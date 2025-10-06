# Demo

I am giving a Demo on Neovim and my config to my alma mater next week. I thought it would be worthwhile to write a small script for this demo.

## Introduction

**Don't skip the introduction ** `go to demo folder and open vim while explaining`

Hello guys, I am here to give a quick presentation on Neovim. Neovim is an IDE/text editor. Put simply a place where you type and edit code.
If you ever see someone in a movie typing code super fast, there's a good chance it's Vim. It's known for fast typing, editing and not touching your mouse.

To be clear, you don't need to learn a tool like Vim to be a great programmer. People exagerate the importance of what IDE you use. I remember for a whole semester in college, I used Notepad++ for all of my coding.
I just think Vim is really cool and I thought I would expose ya'll to something new.

For my history with Vim, I was first exposed to it around six years ago. It's something that always appealed to me but learning it as first is difficult so I quit probably once a year every year.
It wasn't until the last year or two that I forced myself to use it as my main text editor.

To be clear though, I am still very much a novice so if you ask me how to do something, there's a good chance I don't know.

This presentation will be a brief introudction to using Vim and Vim motions, show off a few cool features and plugins I have, lastly a brief overview of my custom configuration.

## 1. Difference Between Vim and Neovim

For a super brief history, Vi was created in the 70s, Vim was created in the 90s (short for Vi Improved), lastly, Neovim was created in the 2010s.

1. Vim/Neovim very similar upon initial download
2. Neovim is better with configuration (written in Lua vs VimScript)
3. Will be refering to it as Vim even though using Neovim

## 2. Vim Motions

**Note:** might need to CTRL **+** to increase font size

#### What are Vim motions?

In a normal IDE you're probably used to just clicking around using your mouse for most edits. But in Vim, you're not supposed to touch the mouse at all.
Vim is a modal editor so you switch between different modes and use lots of different keybindings to type and edit.

Open/Create `example.md` and type a few lines of words.

#### h j k l for moving around

#### e b

jump between words

#### 0 $

jump to beginning of line and end of line

#### Insert Mode a i A I

#### yy dd

- numbers 5yy 5dd
- explain relative line numbers

### u undo


#### Different Modes

- Insert Mode
- Normal Mode
- Visual Mode
- Command Mode
  - how to save
  - how to quit

#### Open `harpoon.lua` in the demo folder

Now to show off a neat example of using Vim motions to edit some code...

## 3. Bouncing Between Files

1. Show Slow Annoying Example (bouncing between two files)

- Example in `go_project`
- add comments to...
- `vim main.go`
- `vim util/world.go`

Ask, "What is the issue with this?"

### Show File Navigation Plugins

2. Show Oil "-"

- explain how Oil is a Vim buffer
- create a file in oil
- delete a file in oil
- copy a file in oil

3. Show the Fuzzy Finder

- find `world.go` and `main.go`

4. Show Harpoon

make sure to clear harpoon buffer before presenting

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
