#!/bin/bash

pwd=
files=(
    ".vimrc"
    ".Xresources"
    ".zshrc"
    ".tmux.conf"
    ".live.sh"
    ".vimperatorrc"
)
for FILE in "${files[@]}"
do
    ln -sv ~/dotfiles/$FILE ~
done

