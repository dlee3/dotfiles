#!/bin/bash

# NOTE: The homebrew script must be run before this script
# so that jq will be installed

# Get latest NVM version
NVM_VERSION="$(curl -s \
  -H "Accept: application/vnd.github+json" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  https://api.github.com/repos/nvm-sh/nvm/git/refs/tags | jq -r '.[-1].ref | split("/") .[-1]')"

# Install nvm
echo "Installing nvm version $NVM_VERSION"
curl -o- "https://raw.githubusercontent.com/nvm-sh/nvm/$NVM_VERSION/install.sh" | bash
