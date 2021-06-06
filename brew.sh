#!/bin/bash
set -e

# install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" 

brew install nmap # Port scanning utility for large networks
brew install python
brew install ipython
brew install fzf
brew install ripgrep
brew install tree
brew install httrack
brew install node
brew install yarn
brew install autojump
brew install bat
brew install --HEAD neovim
brew install ranger
brew install lazygit
brew install highlight #install highlight for ranger preview
brew install cask
brew install nvm
brew install karabiner-elements
brew install stow
#nvm install 14
brew tap homebrew/cask-fonts
brew install --cask font-hack-nerd-font
python3 -m pip install --user --upgrade pynvim
yarn global add neovim

# regular utilities
brew install --cask 1password
brew install --cask alfred
brew install --cask appcleaner
brew install --cask firefox
brew install --cask kitty
brew install --cask amethyst
brew install --cask transmission
brew install --cask anki
brew install --cask vlc
brew install rectangle

#social 
brew install --cask telegram
brew install --cask franz

#work / code related
brew install --cask tunnelblick
brew install --cask zoom
brew install --cask pixelsnap
brew install --cask cleanshot
brew install --cask vscodium

#--------------------------------------
# https://github.com/koekeishiya/yabai
# MacOS window manager
brew install koekeishiya/formulae/yabai
#--------------------------------------
# https://github.com/stedolan/jq
# Lightweight and flexible command-line JSON processor 
brew install jq
#--------------------------------------
# https://github.com/koekeishiya/skhd
# Simple hotkey daemon for macOS
brew install koekeishiya/formulae/skhd
#--------------------------------------


#add config files to 
git clone https://github.com/PetitBandit/kitty.git $HOME/.config/kitty      #kitty config
git clone https://github.com/PetitBandit/zsh.git $HOME/.config/zsh          #zsh config
git clone https://github.com/PetitBandit/yabai.git $HOME/.config/yabai          #zsh config
git clone https://github.com/PetitBandit/skhd.git $HOME/.config/skhd
git clone https://github.com/PetitBandit/karabiner.git $HOME/.config/karabiner



##zsh
echo "source  $HOME/.config/zsh/zshrc"> $HOME/.zshrc
