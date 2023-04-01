#!/bin/bash
set -e

cd $HOME/dotfiles
Repo=("kitty lazygit skhd nvim zsh ")
for repo in $Repo
do
  mkdir $HOME/.config/$repo
  stow -vt ~/.config/$repo $repo
done


# Making symbolic link example
# The following command allows you to put karabiner.json on ~/Dropbox/private.

#     mv ~/.config/karabiner ~/Dropbox/private
#     ln -s ~/Dropbox/private/karabiner ~/.config


# You have to restart karabiner_console_user_server process by the following command after you made a symlink in ordre to tell Karabiner-Elements that the parent directory is changed.

#     launchctl kickstart -k gui/`id -u`/org.pqrs.karabiner.karabiner_console_user_server

#chmod +x ~/dotfiles/yabai/yabairc


git config --global user.email "raph.heb@gmail.com"
git config --global user.name "Raphael HEBERT"



ssh-keygen
ssh-add

nvm install 18
nvm alias default v18.15.0
npm install --global yarn
