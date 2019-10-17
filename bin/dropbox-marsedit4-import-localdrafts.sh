#!/bin/sh
set -eu

TARGET_DIR=LocalDrafts
FROM=$HOME/Dropbox/SyncSettings/MarsEdit/$TARGET_DIR
TO=$HOME/Library/Group\ Containers/493CVA9A35.com.red-sweater/Library/Application\ Support/MarsEdit4

rm -rf "$TO/$TARGET_DIR"
cp -rf "$FROM" "$TO"/
