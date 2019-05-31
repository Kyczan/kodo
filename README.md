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

This project should be used alonside with my [fork of dwm](https://github.com/Kyczan/dwm)

## Content

### bash

### bin

### dunst

### vim

### x
