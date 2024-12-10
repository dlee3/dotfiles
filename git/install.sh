#!/usr/bin/env sh

set -e

email_regex="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6}$"

if [[ -n "$1" && "$1" =~ $email_regex ]]; then
    echo "Supplied email: $1"
else
    echo "\nPlease supply a valid email address.\n"
    exit
fi

EMAIL_STRING=$1
EMAIL_VAR="{email}"


DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

ln -nfs "$DIR/.gitignore_global" ~/.gitignore_global

cp "$DIR/.gitconfig" ~/.gitconfig
ln -nfs "$DIR/.gitmessage" ~/.gitmessage

sed -i '' "s/$EMAIL_VAR/$EMAIL_STRING/g" ~/.gitconfig