#!/bin/bash

TARGET_DIR=LocalDrafts
FROM=$HOME/Dropbox/SyncSettings/MarsEdit/$TARGET_DIR
TO=$HOME/Library/Group\ Containers/493CVA9A35.com.red-sweater/Library/Application\ Support/MarsEdit4

# link MarsEdit Local Drafts on Dropbox
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
