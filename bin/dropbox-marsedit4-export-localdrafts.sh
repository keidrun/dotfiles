#!/bin/sh
set -eu

TARGET_DIR=LocalDrafts
FROM=$HOME/Library/Group\ Containers/493CVA9A35.com.red-sweater/Library/Application\ Support/MarsEdit4/$TARGET_DIR
TO=$HOME/Dropbox/SyncSettings/MarsEdit

rm -rf "$TO/$TARGET_DIR"
cp -rf "$FROM" "$TO"/
