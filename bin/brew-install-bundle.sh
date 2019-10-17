#!/bin/sh
set -eu

# enable 'brew bundle' and 'mas'
set +e
brew tap Homebrew/bundle || echo 'Error: Failed to tap bundle.' && exit 1
brew install mas || echo 'Error: Failed to install mas.' && exit 1
set -e

# install all applications
if [ -f ./Brewfile ]; then
    brew bundle
else
    echo 'Error: Failed to bundle.'
    echo 'Brewfile not found.'
    exit 1
fi
