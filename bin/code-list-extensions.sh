#!/bin/sh
set -eu

code --list-extensions | xargs -L 1 echo code --install-extension
