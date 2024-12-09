#!/bin/bash

# formulae/casks to install
formulae=(
  jetbrains-toolbox
  iterm2
  firefox
  google-chrome
  brave-browser
  alfred
  slack
  synology-chat
  synology-drive
  synology-note-station-client
  autodesk-fusion
  prusaslicer
  openvpn-connect
  home-assistant
  microsoft-office
  affinity-designer
  affinity-photo
  affinity-publisher
  postman
  dbeaver-community
  brackets
  raspberry-pi-imager
  android-file-transfer
)

casks=(
  docker
  visual-studio-code
  itsycal
)

# Install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
(echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/dlee/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# Install all of the formulae (some of these are casks
for f in "${formulae[@]}"; do
  brew install $f
done

# Install all of the casks
for f in "${formulae[@]}"; do
  brew install --cask $f
done
