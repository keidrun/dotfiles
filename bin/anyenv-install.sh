#!/bin/bash

# install anyenv
git clone https://github.com/riywo/anyenv ~/.anyenv
echo '# anyenv' >> ~/.bashrc
echo 'export PATH="$HOME/.anyenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(anyenv init -)"' >> ~/.bashrc

# set anyenv paths for tmux
echo '# anyenv settings on tmux' >> ~/.bashrc
echo 'for D in `ls $HOME/.anyenv/envs`' >> ~/.bashrc
echo 'do' >> ~/.bashrc
echo '    export PATH="$HOME/.anyenv/envs/$D/shims:$PATH"'  >> ~/.bashrc
echo 'done' >> ~/.bashrc

# install anyenv update
mkdir -p $(anyenv root)/plugins
git clone https://github.com/znz/anyenv-update.git $(anyenv root)/plugins/anyenv-update
