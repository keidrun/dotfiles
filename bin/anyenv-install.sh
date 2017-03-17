#!/bin/bash

################################################################################
# library
################################################################################

JENV_ADD_ALL=$(find . -name "jenv-add-all.sh")

################################################################################
# anyenv installation
################################################################################

# install anyenv
git clone https://github.com/riywo/anyenv ~/.anyenv
echo '# anyenv' >> ~/.bash_profile
echo 'export PATH="$HOME/.anyenv/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(anyenv init -)"' >> ~/.bash_profile
exec $SHELL -l

# set anyenv paths for tmux
echo '# anyenv settings on tmux' >> ~/.bash_profile
echo 'for D in `ls $HOME/.anyenv/envs`' >> ~/.bash_profile
echo 'do' >> ~/.bash_profile
echo '    export PATH="$HOME/.anyenv/envs/$D/shims:$PATH"'  >> ~/.bash_profile 
echo 'done' >> ~/.bash_profile

# install anyenv update
mkdir -p $(anyenv root)/plugins
git clone https://github.com/znz/anyenv-update.git $(anyenv root)/plugins/anyenv-update

################################################################################
# *env installation
################################################################################

# install renv
anyenv install rbenv
exec $SHELL -l
# install ruby in stable
rbenv install $(rbenv install -l | grep -v - | tail -1)
rbenv global $(rbenv versions | sed -e 's/(set.*//g' -e 's/ //g' -e 's/*//g' | grep -v - | tail -1)
# install bundler
rbenv exec gem install bundler

# install pyenv
anyenv install pyenv
exec $SHELL -l
# install python in stable
pyenv install $(pyenv install -l | grep -v -e - -e rc | tail -1)
pyenv global $(pyenv versions | sed -e 's/(set.*//g' -e 's/ //g' -e 's/*//g' | grep -v -e - -e rc | tail -1)
pyenv rehash
# install virtualenv
git clone https://github.com/pyenv/pyenv-virtualenv.git $(pyenv root)/plugins/pyenv-virtualenv
echo '# virtualenv for pyenv' >> ~/.bash_profile
echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.bash_profile
exec $SHELL -l
# avoid errors on Homebrew
echo '# avoid brew doctor errors of pyenv in anyenv' >> ~/.bashrc
echo 'alias brew="env PATH=${PATH//\/Users\/${USER}\/\.anyenv\/envs\/pyenv\/shims:/} brew"' >> ~/.bashrc

# install ndenv
anyenv install ndenv
exec $SHELL -l
# install node in stable until version 8
# TODO break version limit
ndenv install $(ndenv install -l | grep -E '^.*[468]\..*\..*$' | tail -1)
ndenv global $(ndenv versions | sed -e 's/(set.*//g' -e 's/ //g' -e 's/*//g' | grep -E '^.*[468]\..*\..*$' | tail -1)
ndenv rehash

# install goenv
anyenv install goenv
exec $SHELL -l
# install go in stable
goenv install $(goenv install --list | grep -E '^[0-9]+\.[0-9]+$' | head -1)
goenv global $(goenv versions | sed -e 's/(set.*//g' -e 's/ //g' -e 's/*//g' | grep -E '^[0-9]+\.[0-9]+$' | tail -1)
goenv rehash

# install jenv
anyenv install jenv
exec $SHELL -l
# jenv add all java home
bash "$JENV_ADD_ALL"
# set java in stable
jenv global $(jenv versions | sed -e 's/(set.*//g' -e 's/ //g' -e 's/*//g' | grep -E '^\s*[0-9]+\.[0-9]+$' | tail -1)
jenv rehash
