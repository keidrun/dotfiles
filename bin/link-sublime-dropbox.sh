#!/bin/bash

FROM=~/Dropbox/Sublime/User
TO=~/Library/Application\ Support/Sublime\ Text\ 3/Packages/
PC="$TO"User/Package\ Control.sublime-settings

# link Sublime Text Packages on Dropbox
if [ ! -f "$PC" ]; then
    echo "Error: '$PC' not installed."
    echo "Press shift+command+P and type 'Install Package Control' on Sublime Text."
    exit 1
fi
if [ -d "$FROM" ]; then
    # dump
    mv "$TO"User "$TO"User.`date "+%Y-%m-%d_%H%M%S"`

    # link
    ln -s $FROM "$TO"
else
    echo "'$FROM' not found."
    exit 1
fi
