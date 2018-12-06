#!/bin/bash

FROM=$HOME/Dropbox/SyncSettings/iTerm/DynamicProfiles/profiles.json
TO=$HOME/Library/Application\ Support/iTerm2/DynamicProfiles/profiles.json

# link iTerm Profiles JSON file on Dropbox
if [ -e "$FROM" ]; then
    # dump
    if [ -e "$TO" ]; then
        mv "$TO" "$TO".`date "+%Y-%m-%d_%H%M%S"`
    fi

    # link
    ln -s "$FROM" "$TO"
else
    echo "'$FROM' not found."
    exit 1
fi
