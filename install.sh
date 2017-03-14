#!/bin/bash

# download
git clone https://github.com/keidrun/dotfiles
cd dotfiles

# install
for f in .??*
do
    [[ "$f" == ".git" ]] && continue
    [[ "$f" == ".DS_Store" ]] && continue

    # dump
    mv $f ${f/\./_}.`date "+%Y-%m-%d_%H%M%S"`

    # refresh
    cp ${f/\./_} $f

    # link
    ln -s $f ~/$f
done
