#!/bin/bash

brew cask outdated | cut -f1 | while read line
do
    brew cask reinstall "$line"
done
