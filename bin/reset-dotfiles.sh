#!/bin/bash

for f in .??*
do
    # exclude
    [[ "$f" == ".DS_Store" ]] && continue
    [[ "$f" == ".git" ]] && continue
    [[ "$f" == ".gitignore" ]] && continue

    # back up
    [[ -f ~/$f ]] && mv ~/$f backup/${f/\./_}.`date "+%Y-%m-%d_%H%M%S"`

    # refresh
    cp $f ~/$f
done
