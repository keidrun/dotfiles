#!/bin/bash

# install deno
curl -L https://deno.land/x/install/install.py | python
echo '# TypeScript runtime' >> ~/.bashrc
echo 'export PATH=$HOME/.deno/bin:$PATH' >> ~/.bashrc
