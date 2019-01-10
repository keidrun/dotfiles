#!/bin/bash

# install deno
curl -L https://deno.land/x/install/install.py | python
echo '# TypeScript runtime' >> ~/.bash_profile
echo 'export PATH=$HOME/.deno/bin:$PATH' >> ~/.bash_profile
