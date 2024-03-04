#!/bin/bash
set -e

cd $HOME/dotfiles
Repo=("kitty lazygit nvim zsh ")
for repo in $Repo
do
  stow -vt ~/.config/$repo $repo
done
