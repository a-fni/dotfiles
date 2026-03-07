# dotfiles

Custom Arch Linux dotfiles.

## Overview

This repository contains most of the dotfiles used in my custom Arch Linux environment. These include:
- `.vimrc` configuration file
- `.bashrc` and `.config/basrch/*` configuration files for aliases, `PS1` and shell environment
- Dolphin, KDE, Konsole, ... custom configurations that it might be desired to vesion and/or replicate on future machines

These configuration files are currently in use on the following setup:
- Arch Linux x86\_64
- `bash` shell, emulated by **Konsole** terminal
- **Wayland** window manager
- **KDE Plasma** desktop environment
- **Dolphin** file explorer

## Configuration and Usage

In order to simply and smoothly use this repository a bare git repository was setup. Naturally, the repository was setup
with `showUntrackedFiles = no` so that `status` commands do not clog up the entire terminal. Finally, in order to be able
to access the repository ubiquitously the following alias was setup for bash:

`alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'`
