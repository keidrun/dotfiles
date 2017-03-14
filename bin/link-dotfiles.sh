#!/bin/bash

for f in .??*
do
    # 
    [[ "$f" == ".git" ]] && continue
    [[ "$f" == ".DS_Store" ]] && continue

    # link
    ln -s $f ~/$f
done
