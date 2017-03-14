#!/bin/bash

# install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
status=$?
if [ $status -gt 0 ]; then
    echo 'Error: Failed to install Homebrew.'
    echo 'Note: See "https://brew.sh/".'
    exit 1
fi

# enable 'brew bundle' and 'mas'
brew tap Homebrew/bundle
brew install mas

# install all applications
if [ -f ./Brewfile ]; then
    brew bundle
else
    echo 'Brewfile nof found.'
    exit 1
fi
