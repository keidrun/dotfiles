#!/bin/bash

################################################################################
# library
################################################################################

REFRESH_DOTS=$(find . -name "refresh-dotfiles.sh")
VIM_INSTALL=$(find . -name "vim-install-packages.sh")

################################################################################
# Installation
################################################################################

# download
git clone https://github.com/keidrun/dotfiles
cd dotfiles

# install dotfiles
bash "$REFRESH_DOTS"

# install vim packages
bash "$VIM_INSTALL"
