#!/bin/bash
set -e

cd $HOME/dotfiles
Repo=("kitty karabiner skhd yabai nvim zsh ")
for repo in $Repo
do
  mkdir $HOME/.config/$repo
  stow -vt ~/.config/$repo $repo
done









