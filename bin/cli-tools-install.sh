#!/bin/sh
set -eu

# install deno
curl -L https://deno.land/x/install/install.py | python
echo '# TypeScript runtime' >> ~/.zshrc
echo 'export PATH=$HOME/.deno/bin:$PATH' >> ~/.zshrc
