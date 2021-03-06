#!/bin/sh
set -eu

# install go in stable
goenv install $(goenv install --list | grep -E '^[0-9]+\.[0-9]+$' | head -1)
goenv global $(goenv versions | sed -e 's/(set.*//g' -e 's/ //g' -e 's/*//g' | grep -E '^[0-9]+\.[0-9]+$' | tail -1)
goenv rehash
echo '# Golang' >> ~/.zshrc
echo 'export GOPATH=$HOME/go' >> ~/.zshrc
echo 'export PATH=$GOPATH/bin:$PATH' >> ~/.zshrc
