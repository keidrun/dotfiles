#!/bin/sh
set -eu

# install anyenv
git clone https://github.com/riywo/anyenv ~/.anyenv
echo '# anyenv' >> ~/.zshrc
echo 'export PATH="$HOME/.anyenv/bin:$PATH"' >> ~/.zshrc
echo 'eval "$(anyenv init - zsh)"' >> ~/.zshrc

# set anyenv paths for tmux
echo '# anyenv settings on tmux' >> ~/.zshrc
echo 'for D in `ls $HOME/.anyenv/envs`' >> ~/.zshrc
echo 'do' >> ~/.zshrc
echo '    export PATH="$HOME/.anyenv/envs/$D/shims:$PATH"'  >> ~/.zshrc
echo 'done' >> ~/.zshrc

# install anyenv update
mkdir -p $(anyenv root)/plugins
git clone https://github.com/znz/anyenv-update.git $(anyenv root)/plugins/anyenv-update
