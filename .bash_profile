# import aliases and functions
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

################################################################################
# basic settings
################################################################################

# homebrew
export PATH=/usr/local/bin:/usr/local/sbin:$PATH
export HOMEBREW_CACHE=~/Library/Caches/Homebrew
export HOMEBREW_EDITOR=/usr/local/bin/vim
# export HOMEBREW_GITHUB_API_TOKEN=XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

# bash-completion
[ -f `brew --prefix`/etc/bash_completion ] && . `brew --prefix`/etc/bash_completion

# git
GIT_TERMINAL_PROMPT=0
GIT_PS1_SHOWDIRTYSTATE=true
#export PS1='\h:\[\033[33m\]\W\[\033[00m\] \[\033[32m\]\u\[\033[00m\]\[\033[31m\]$(__git_ps1 [%s])\[\033[00m\]\$ '
export PS1='\[\033[32m\]\h\[\033[00m\] \[\033[33m\]\W\[\033[00m\]\[\033[31m\]$(__git_ps1 [%s])\[\033[00m\]\$ '

# z
[ -f `brew --prefix`/etc/profile.d/z.sh ] && . `brew --prefix`/etc/profile.d/z.sh

# openssl
export PATH=/usr/local/opt/openssl/bin:$PATH

# python user packages to use `pip install --user`
export PATH=$HOME/.local/bin:$PATH

################################################################################
# environment
################################################################################
