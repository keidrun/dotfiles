#!/bin/sh
set -eu

# install sdkman
curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"

# install languages on jvm
yes | sdk install java
sdk install groovy
sdk install scala
sdk install kotlin

# install build tools
sdk install gradle
sdk install maven
sdk install ant
sdk install sbt

# install frameworks
sdk install springboot

# install scaffold tools
sdk install lazybones
