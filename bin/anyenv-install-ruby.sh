#!/bin/sh
set -eu

# install ruby in stable
rbenv install $(rbenv install -l | grep -v - | tail -1)
rbenv global $(rbenv versions | sed -e 's/(set.*//g' -e 's/ //g' -e 's/*//g' | grep -v - | tail -1)
# install bundler
rbenv exec gem install bundler
