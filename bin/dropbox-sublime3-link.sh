#!/bin/bash

TARGET_DIR=User
FROM=$HOME/Dropbox/SyncSettings/Sublime/$TARGET_DIR
TO=$HOME/Library/Application\ Support/Sublime\ Text\ 3/Packages
PACKAGE_CONTROL="$TO/$TARGET_DIR"/Package\ Control.sublime-settings

# link Sublime Text Packages on Dropbox
if [ ! -f "$PACKAGE_CONTROL" ]; then
    echo "Error: '$PACKAGE_CONTROL' not found."
    echo "Press shift+command+P and type 'Install Package Control' on Sublime Text."
    exit 1
fi
if [ -d "$FROM" ]; then
    # dump
    if [ -d "$TO/$TARGET_DIR" ]; then
        mv "$TO/$TARGET_DIR" "$TO/$TARGET_DIR".`date "+%Y-%m-%d_%H%M%S"`
    fi

    # link
    ln -s "$FROM" "$TO"
else
    echo "'$FROM' not found."
    exit 1
fi
