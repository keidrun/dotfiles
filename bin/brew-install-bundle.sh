#!/bin/bash

# install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
status=$?
if [ $status -gt 0 ]; then
    echo 'Error: Failed to install Homebrew.'
    echo 'See "https://brew.sh/".'
    exit 1
fi

# enable 'brew bundle' and 'mas'
brew tap Homebrew/bundle || echo 'Error: Failed to tap bundle.' && exit 1
brew install mas || echo 'Error: Failed to install mas.' && exit 1

# install all applications
if [ -f ./Brewfile ]; then
    brew bundle
else
    echo 'Error: Failed to bundle.'
    echo 'Brewfile not found.'
    exit 1
fi
