#!/bin/sh
set -eu

# download
git clone https://github.com/keidrun/dotfiles
cd dotfiles

# setup prezto for zsh
rm ~/.zshrc
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

# setup zsh
cat ./.zshrc >> ~/.zshrc

# set environments for install
RESET_DOTS=$(find . -name "reset-dotfiles.sh")
VIM_INSTALL=$(find . -name "vim-install-packages.sh")

# install dotfiles
bash "$RESET_DOTS"

# install vim packages
bash "$VIM_INSTALL"
