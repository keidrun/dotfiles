#!/bin/bash

# install python in stable
pyenv install $(pyenv install -l | grep -v -e - -e rc | tail -1)
pyenv global $(pyenv versions | sed -e 's/(set.*//g' -e 's/ //g' -e 's/*//g' | grep -v -e - -e rc | tail -1)

# avoid errors on Homebrew
echo '# avoid brew doctor errors of pyenv in anyenv' >> ~/.bashrc
echo 'alias brew="env PATH=${PATH//\/Users\/${USER}\/\.anyenv\/envs\/pyenv\/shims:/} brew"' >> ~/.bashrc

# setup pipenv
pip install --upgrade pip
pip install --user pipenv
echo '# pipenv' >> ~/.bashrc
echo 'export PIPENV_VENV_IN_PROJECT=1' >> ~/.bashrc
