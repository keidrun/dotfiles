#!/bin/sh
set -eu

# set default-packages
touch $(nodenv root)/default-packages
echo 'yarn' >> $(nodenv root)/default-packages
echo 'typescript' >> $(nodenv root)/default-packages
echo 'nodemon' >> $(nodenv root)/default-packages
echo 'jest' >> $(nodenv root)/default-packages
echo 'flow-bin' >> $(nodenv root)/default-packages
echo 'eslint' >> $(nodenv root)/default-packages
echo 'tslint' >> $(nodenv root)/default-packages
echo '@babel/core' >> $(nodenv root)/default-packages
echo '@babel/cli' >> $(nodenv root)/default-packages
echo 'webpack-cli' >> $(nodenv root)/default-packages
echo '@webpack-cli/init' >> $(nodenv root)/default-packages
echo 'parcel-bundler' >> $(nodenv root)/default-packages
echo 'express-generator' >> $(nodenv root)/default-packages
echo 'create-react-app' >> $(nodenv root)/default-packages
echo '@vue/cli' >> $(nodenv root)/default-packages

# install node in stable until version 18
nodenv install $(nodenv install -l | grep -E '^.*1[02468]\..*\..*$' | tail -1)
nodenv global $(nodenv versions | sed -e 's/(set.*//g' -e 's/ //g' -e 's/*//g' | grep -E '^.*1[02468]\..*\..*$' | tail -1)
