#!/usr/bin/env sh

set -e

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

ln -nfs "$DIR/gitignore_global" ~/.gitignore_global

ln -nfs "$DIR/.gitconfig" ~/.gitconfig
ln -nfs "$DIR/.gitmessage" ~/.gitmessage