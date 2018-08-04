#!/usr/bin/env bash

#get dotfiles directory
cd "$( dirname "${BASH_SOURCE[0]}" )"
DOTFILES_DIR="$( pwd )"

#fetch submodules
git submodule update --init --recursive

python "$DOTFILES_DIR/.vim/bundle/YouCompleteMe/install.py"
npm --prefix "$DOTFILES_DIR/.vim/bundle/tern_for_vim" install "$DOTFILES_DIR/.vim/bundle/tern_for_vim"

#symlinks
ln -siv "$DOTFILES_DIR/.bash_aliases" ~
ln -siv "$DOTFILES_DIR/.bashrc" ~
ln -siv "$DOTFILES_DIR/.bash_profile" ~
ln -siv "$DOTFILES_DIR/.vimrc" ~
ln -siv "$DOTFILES_DIR/.vim" ~
ln -siv "$DOTFILES_DIR/.tern-config" ~
ln -siv "$DOTFILES_DIR/.fonts" ~
ln -siv "$DOTFILES_DIR/.config/i3" ~/.config/
