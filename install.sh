#!/bin/bash

# download
git clone https://github.com/keidrun/dotfiles
cd dotfiles

# set environments
RESET_DOTS=$(find . -name "reset-dotfiles.sh")
VIM_INSTALL=$(find . -name "vim-install-packages.sh")

# install dotfiles
bash "$RESET_DOTS"

# install vim packages
bash "$VIM_INSTALL"
