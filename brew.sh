
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
brew tap homebrew/cask-versions
brew install --cask firefox-developer-edition

#--------------------------------------
# https://github.com/koekeishiya/yabai
# MacOS window manager
#brew install koekeishiya/formulae/yabai
#--------------------------------------
# https://github.com/stedolan/jq
# Lightweight and flexible command-line JSON processor 
brew install jq
#--------------------------------------
# https://github.com/koekeishiya/skhd
# Simple hotkey daemon for macOS
#brew install koekeishiya/formulae/skhd
#--------------------------------------


##add config files to 
# git clone https://github.com/PetitBandit/dotfiles.git $HOME/dotfiles


##zsh
echo "source  $HOME/dotfiles/zsh/zshrc"> $HOME/.zshrc

npm install -g typescript typescript-language-server
npm i -g vscode-langservers-extracted
