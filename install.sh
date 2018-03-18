#!/usr/bin/env bash

#get dotfiles directory
cd "$( dirname "${BASH_SOURCE[0]}" )"
DOTFILES_DIR="$( pwd )"

#fetch submodules
git submodule init
git submodule update

#symlinks
ln -siv "$DOTFILES_DIR/.bash_aliases" ~
ln -siv "$DOTFILES_DIR/.bashrc" ~
ln -siv "$DOTFILES_DIR/.vimrc" ~
ln -siv "$DOTFILES_DIR/.vim" ~
