# Why Doth Use Neovim?

Now technically this title reads "Why Does Use Neovim?" which isn't really English but I thought it was funny. This document is an overview of why I recommend learning and using Neovim. It also includes some background information on my Neovim configuration. This
doesn't really cover how to use Neovim, it's more about my experience with it and why I recommend it.

I have a coworker that absolutely swears by driving manual transmission cars. He says "it's the only way to drive a car." I think he's absolutely bonkers for suggesting this and I'm also a little petty he wouldn't let me borrow his expensive Porche for a date, but there's some truth to
what he says. Coding in Neovim is kind of like driving a manual car; There's a subset of people that will absolutely love it and there's a lot of people that may love it but have never tried. I have no idea if you're the kind of person to enjoy coding in Neovim but you
might be and you won't know unless you try.

I will do my best to include links to articles and videos that explain certain concepts better than I do here. I already created a Youtube video that covers a decent amount of information in this article but also has a nice visual element.
[Neovim Tutorial and Plugin Overview](https://www.youtube.com/watch?v=pqi6PbQWKmE&t=3s). Learning Neovim is much easier with Youtube tutorials so I highly recommend ya'll check some of them out.

## Neovim History

I think it's important to understand a little bit of the background of where Neovim came from. This article is much more in depth so I recommend you read through it
[Understanding the Origins and the Evolution of Vi & Vim](https://pikuma.com/blog/origins-of-vim-text-editor). I will provide a super brief summary of the history though. In the 70s, there was Vi which was a revolutionary new text editor mainly used for programming.
In the 90s, Vim (Vi Improved) was created as an improvement to Vi and kind of a 2.0 version. Then in the 2010s, Neovim as an improvement to Vim with the main benefit being the Lua configurations.
Now Vim and Neovim are somewhat similar upon a fresh install so for the rest of this article I will be refering to Neovim as Vim since I think it sounds cooler and I don't want to be typing all those extra characters.
I've barely touched Vi unless it's the only text editor installed on a server so I won't really be
talking about Vi in this article.

## What is Vim?

Vim is a fast customizable modal text editor with an emphasis on using your keyboard for everything. Never touch the mouse. When you first start out it can feel like you're writing left handed (or with your feet if you're ambidextrous). It is very confusing and
funky. For at least 20 years there has been a joke about "How do I exit Vim?" While this joke is goofy, it exists for a reason; Like a lot of things in Vim, exiting Vim is not intuitive. You really need to watch a guide or two and practice to do even the most basic things
in Vim.

## Vim Modes

Now I mentioned that Vim is a modal editor which just means it has different modes. This is another funky feature at first because most other text editors you've probably used have one mode, typing.
Vim has four primary modes (and some other less used modes);

- Normal Mode: Primarily used to move around and adjust your cursor using your mouse. Also includes copying/pasting/editing the text.
- Insert Mode: The standard typing mode. Fairly similar to what you've used before.
- Visual Mode: Let's you visually select (highlight) text.
- Command-line Mode: Let's you input different commands.

Check out this blog [Vim Modes](https://www.warp.dev/terminus/vim-modes) for more information

Switching between modes is confusing at first but once you get some momentum with it you'll be switching between the modes smooth as butter and developing much faster. The different modes are a big part of why you do not need to use your. I know one person that switches
between modes with foot pedals.

## Why Switch to Vim?

It's really not my place to tell you what to do. I just think it's worth considering switching to coding primarily in Vim. If you want to be a VS Code Andy for the rest of your life there's nothing wrong with that. Even my hero John Carmack uses VS Code (or at least
speaks highly of it). A lot of Vim's benefit is how fast it is, but with that statement, I always think back to what a wise professor told me back when I was a young pup, "You spend more time thinking than programming." With all that being said I am just trying to
make the point that switching Vim is up to you and not necessary.

Now here are some of my favorite things about using Vim.

### 1. Vim is Fast

Alright so not all of the popular IDEs slowness is their fault. Sometimes communicating back and forth between an LSP and Client (the IDE) is just inherently slow and Vim can't make this miraculously faster. That being said

### 2. My Wrist Hurts. Why Keyboard All the Way

Okay so when I tell people how fantastic it is that typing in Vim enables you to never touch your mouse, they look at me like I'm some kind of lunatic. There's two main reasons I love not having to use my mouse when coding.

1. It's faster and you keep your momentum. Taking your hands off your keyboard to move your mouse pointer is a lot slower than you would think.
2. So I don't know if it's because I hurt my wrist helping my brother move a 300 pound safe or I'm just getting old, but my wrist gets sore if I use it too much. I would have some days where I would work a full shift using my mouse a lot, then I would play computer games
   until my bed time and that's a full day of using the mouse. This would cause my wrist to hurt a lot. I have noticed that using my computer mouse less leads to less hurting of my wrist.

### 3. Customization

Some people, when they see a blank canvas, they're excited. Others get nervous. For me the blank canvas that is configuring Vim to my specific liking is exciting. I like being able to choose my exact keybinds, my preferered formatters and change pretty much everything
about my editor. It's hard to explain the customization of Neovim. I think watching this video [0 to LSP : Neovim RC From Scratch](https://www.youtube.com/watch?v=w7i4amO_zaE) is the best way to see how deep the customization rabbit hole goes.

### Speed

It takes some serious practice to build confidence with Vim motions but once you do, you'll be like Speed Racer on the keyboard. It's like going from 'Hunt-and-Peck' typing to 'Touch Typing.' The video above by ThePrimeagen shows off how fast he is at using Vim.
I am at a point where I'm faster developing with Vim compared to normal IDEs but I still have much to learn.

### 5. It looks cool and feels good

Perhaps the most important reason of all, coding in Vim just looks cool and it feels really good. People assume you're 10x smarter for coding in Vim. Well that statement isn't based on empirical evidence but it is somewhat true. Perhaps the most important reason for
why I use Vim is that it just feels good. I find myself more excited to write sometimes mundane code. It's kinda of like driving a sports car. Discovering new plugins is also much more exciting in Vim compared to other IDEs in my experience.

## How I Would Start Learning Vim

## Jumping Around Files

For my personally, I fairly quickly reached a bout where I was fairly comftorable editing my code with Vim. The thing that took me a long time to get the hang of switching between files in a project. I would save and quit vim then re open it in a new file. This was slow
and yucky. I will go more in depth on my solution later in the plugins section but the three plugins/tools that worked for me to switch between files are `Oil` as my file tree, `telescope` mainly for the fuzzy finder to search files and lastly, `Harpoon` to bounce between
2-4 files ultra fast. You should probably start learning Neovim with no plugins or a super basic setup, but these three plugins are a must have. Especially `Oil` as the default file tree `netrw` in Neovim is gross.

## Important Vim/Neovim Concepts

Here are just a few definitions/concepts you will encounter working with Neovim. A lot of these aren't exclusive to Neovim and are important to understand for most IDEs.

### LSP (language server protocol)

Honestly, you should just read through this document [https://matklad.github.io/2022/04/25/why-lsp.html](https://matklad.github.io/2022/04/25/why-lsp.html). It explains what an LSP is far better than I can. If you want a super simple explanation, if you've ever seen
the red or yellow squiggly lines under a variable, that's one of the MANY things your LSP does.

### Lua

Lua is a scripting language kinda maybe a little not really at all similar to Python. While you can still use Vimscript (puke) for your Neovim config, you should be using Lua. While I am far from a Lua expert, I do find it quite easy to use for configuration. The big
thing Neovim has going for it is the fantastic API that you use with Lua. The API covers pretty much any and every setting/config you could ever want. It also gives the smarter people many options when developing plugins.

### Buffer

Between you and me, I still don't fully understand what the Buffer is in Vim. This document explains it quite well though [https://linuxhandbook.com/vim-buffers/](https://linuxhandbook.com/vim-buffers/)

### Vim Motions

I briefly mentioned this earlier but one of the best things about Vim are the Vim Motions. Even if you have zero intention of installing Neovim, you should consider installing vim motions. The editing and bouncing around from the different modes only using the keyboard
are just fantastic and I believe the true way to develop.

## Plugins and my Config

While Neovim by it self is a great experience by itself, it gets really saucy with some plugins. These aren't all the plugins I use but they're some of the most important and I love using them. You can see my entire Neovim config here
[https://github.com/nolanwinsman/nolanw.nvim](https://github.com/nolanwinsman/nolanw.nvim) Most notably, the plugins below exclude all my LSP and formatting setup.

Admitidly, creating your config in Neovim is substantially more difficult than most IDEs. I myself have had to wipe everything and start from scratch multiple times. After a few failures though, I've finally built something I'm truly proud of and feels finely tuned to
me.

#### Lazy [https://github.com/folke/lazy.nvim](https://github.com/folke/lazy.nvim)

lazy.nvim is a modern plugin manager for Neovim.

#### Oil [https://github.com/stevearc/oil.nvim](https://github.com/stevearc/oil.nvim)

A vim-vinegar like file explorer that lets you edit your filesystem like a normal Neovim buffer.

### Telescope [https://github.com/nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)

telescope.nvim is a highly extendable fuzzy finder over lists. Built on the latest awesome features from neovim core. Telescope is centered around modularity, allowing for easy customization.

#### Harpoon [https://github.com/ThePrimeagen/harpoon/tree/harpoon2](https://github.com/ThePrimeagen/harpoon/tree/harpoon2)

Used to bounce between a few important files faster than Sonic

## Videos/Sources

Here are some cool Neovim videos I would recommend you watch.

[Neovim in 100 Seconds](https://www.youtube.com/watch?v=c4OyfL5o7DU)
[Why I Cant Stande IDE's After Using VIM | Prime Reacts](https://www.youtube.com/watch?v=zPMPqzjM0Fw)
[0 to LSP : Neovim RC From Scratch](https://www.youtube.com/watch?v=w7i4amO_zaE)
[Vim vs Neovim](https://www.youtube.com/shorts/7xFOxIrHyHE)
[John Carmack: Best programming setup and IDE | Lex Fridman Podcast Clips](https://www.youtube.com/watch?v=tzr7hRXcwkw&t=703s)
