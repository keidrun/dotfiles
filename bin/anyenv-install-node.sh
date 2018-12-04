#!/bin/bash

# install plugins of ndenv
git clone https://github.com/pine/ndenv-yarn-install.git "$(ndenv root)/plugins/ndenv-yarn-install"

# install node in stable until version 18
ndenv install $(ndenv install -l | grep -E '^.*1[02468]\..*\..*$' | tail -1)
ndenv global $(ndenv versions | sed -e 's/(set.*//g' -e 's/ //g' -e 's/*//g' | grep -E '^.*[468]\..*\..*$' | tail -1)
