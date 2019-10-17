#!/bin/sh
set -eu

VI=~/.vimrc

if [ -f $VI ]; then
    vim +PlugInstall +qall
else
    echo 'Error: Failed to install vim packages.'
    echo "'$VI' not found."
    exit 1
fi
