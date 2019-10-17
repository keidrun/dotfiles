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
export GIT_TERMINAL_PROMPT=0
export GIT_PS1_SHOWDIRTYSTATE=true
#export PS1='\h:\[\033[33m\]\W\[\033[00m\] \[\033[32m\]\u\[\033[00m\]\[\033[31m\]$(__git_ps1 [%s])\[\033[00m\]\$ '
export PS1='\[\033[32m\]\h\[\033[00m\] \[\033[33m\]\W\[\033[00m\]\[\033[31m\]$(__git_ps1 [%s])\[\033[00m\]\$ '

# z
[ -f `brew --prefix`/etc/profile.d/z.sh ] && . `brew --prefix`/etc/profile.d/z.sh

# openssl
export PATH=/usr/local/opt/openssl/bin:$PATH

# python user packages to use `pip install --user`
export PATH=$HOME/.local/bin:$PATH

################################################################################
# functions
################################################################################

# cd the path and open Finder's active window
cdf () {
    target=`osascript -e 'tell application "Finder" to if (count of Finder windows) > 0 then get POSIX path of (target of front Finder window as text)'`
    if [ "$target" != "" ]
    then
        cd "$target"
        pwd
    else
        echo 'Finder''s window not found.' >&2
    fi
}

# select a folder by peco and cd it
pecocd () {
    local dir=`ls -1d */ | peco`
    if [ ! -z "$dir" ] ; then
        cd "$dir"
    fi
}

# select a host by peco and ssh it
pecossh () {
    [ -f ~/.ssh/config ] && grep -w Host ~/.ssh/config | peco | awk '{print $2}' | xargs -o -n 1 ssh
}

################################################################################
# aliases
################################################################################

# basic
alias ls='ls -F -G'
alias ll='ls -l'
alias la='ls -a'
alias lla='ls -la'
#alias rm='rm -i'
#alias rd='rmdir'
alias relogin='exec $SHELL -l'
alias df='df -h' # display MB instead of KB
alias f='open .' # open Finder

# Homebrew
alias j='z'
alias rm='trash'
alias cat='ccat'

# Editor
alias c='code' # open Visual Studio Code

################################################################################
# others
################################################################################
