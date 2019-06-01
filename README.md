# KODO

KOwal's DOtfiles

## Purpose

This repo contains my dotfiles and scripts that can easily set up a new mashine. Also this is backup of my desktop settings in case of any errors on my computer.

## Setup

Clone repo.

Be sure to install `stow`. More information about program can be found [here](https://www.gnu.org/software/stow/). Also see [this article](http://brandon.invergo.net/news/2012-05-26-using-gnu-stow-to-manage-your-dotfiles.html) to understand how to use `stow` to manage dotfiles.

Then execute commands from `kodo` directory.

```sh
stow --target=$HOME bash
stow --target=$HOME bin
stow --target=$HOME dunst
stow --target=$HOME vim
stow --target=$HOME x
```

This project should be used alonside with my [fork of dwm](https://github.com/Kyczan/dwm) and [fork of st terminal](https://github.com/Kyczan/st)

Also you can use `install.sh` script located in root of this directory. It installs some programs needed by KODO. But use it with care.

## Content

### bash

- `.aliases` - contains useful shortcuts.
- `.bash_profile` - runs once on logon.
- `.bashrc` - runs every time when bash starts (new terminal window is spawn). Loads aliases and creates custom prompt line:

![prompt](./scrots/prompt.png)

- `.inputrc` - this file defines how bash should work. Instead of using Emacs shortcuts it uses vim keys to navigate through bash prompt. Default there is enabled `insert` mode. To switch to `command` mode use `Esc` key. To distinguish modes there are two types of cursor. For `insert` mode bar/pipe `|` and for `command` mode block `█`. For reference see this [article](http://vim.wikia.com/wiki/Use_vi_shortcuts_in_terminal).

### bin

Contains bunch of scripts available across the terminal. Worth to be mentioned:

- `set-dwm-status-bar` - it is initialized in `.xinitrc` when system starts, and in the loop it prints dwm status bar.

### dunst

Contains config files for notification app

### vim

Config file for Vim.

### x

- `.xintrc` - runs when X session starts. Loads theme from `.Xresources` and opens `dwm`.
- `.Xresources` - defines theme for system. Loads params from `.xres` folder.
