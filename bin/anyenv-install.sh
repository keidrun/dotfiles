#!/bin/bash

# install anyenv
git clone https://github.com/riywo/anyenv ~/.anyenv
echo '# anyenv' >> ~/.bash_profile
echo 'export PATH="$HOME/.anyenv/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(anyenv init -)"' >> ~/.bash_profile

# set anyenv paths for tmux
echo '# anyenv settings on tmux' >> ~/.bash_profile
echo 'for D in `ls $HOME/.anyenv/envs`' >> ~/.bash_profile
echo 'do' >> ~/.bash_profile
echo '    export PATH="$HOME/.anyenv/envs/$D/shims:$PATH"'  >> ~/.bash_profile
echo 'done' >> ~/.bash_profile

# install anyenv update
mkdir -p $(anyenv root)/plugins
git clone https://github.com/znz/anyenv-update.git $(anyenv root)/plugins/anyenv-update
