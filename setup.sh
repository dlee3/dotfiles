#!/usr/bin/env sh

set -e

# Check for prerequisites
type zsh >/dev/null 2>&1 || {
  echo 'Please install zsh';
  echo 'yum install -y zsh on RHEL';
  echo 'apt-get install -y zsh on Ubuntu';
  exit 1;
}

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

ZSH=$(which zsh)

echo 'Configuring Git'

# Configure Git
sh "$DIR/git/install.sh"

echo 'Changing shell....'
chsh -s $ZSH

echo 'Installing oh-my-zsh & powerline fonts'
# Install oh-my-zsh
rm -rf ~/.oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" --unattended

# Install powerline fonts
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

echo 'Loading zsh'
zsh
source $HOME/.zshrc

# Install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install nodejs
#echo 'Installing nvm'
#curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.1/install.sh | bash
#echo 'Installing node.js'
#nvm install 10

# Linking angular/yarn
#echo 'Linking angular-cli.json'
#ln -nfs "$DIR/angular-cli.json" ~/.angular-cli.json