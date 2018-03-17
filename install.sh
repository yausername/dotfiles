#!/usr/bin/env bash

#get dotfiles directory
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

#symlinks
ln -siv "$DOTFILES_DIR/.bash_aliases" ~
ln -siv "$DOTFILES_DIR/.bashrc" ~
ln -siv "$DOTFILES_DIR/.vimrc" ~
ln -siv "$DOTFILES_DIR/.vim" ~
