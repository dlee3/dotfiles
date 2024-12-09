#!/bin/bash

set -euo pipefail

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

echo 'Installing oh-my-zsh & powerline fonts'
## Install oh-my-zsh
rm -rf ~/.oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
#
## Install powerline fonts
git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts

echo 'Linking zshrc'
ln -nfs "$DIR/zshrc" ~/.zshrc
ln -nfs "$DIR/zshenv" ~/.zshenv
ln -nfs "$DIR/my-theme.zsh-theme" ~/.oh-my-zsh/themes/my-theme.zsh-theme

echo 'Loading zsh'
zsh
source $HOME/.zshrc

# Add git configs
echo 'Configuring Git'
sh "$DIR/git/install.sh"

# Install apps
echo 'Installing homebrew & apps'
sh "$DIR/homebrew.sh"

# Install apps
echo 'Installing nvm'
sh "$DIR/nvm.sh"

# Linking angular/yarn
#echo 'Linking angular-cli.json'
#ln -nfs "$DIR/angular-cli.json" ~/.angular-cli.json