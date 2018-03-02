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
#alias s='subl' # open Sublime Text
alias c='code' # open Visual Studio Code

################################################################################
# environment
################################################################################
