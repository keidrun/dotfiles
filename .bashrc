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
alias rd='rmdir'
alias df='df -h' # display MB instead of KB
alias f='open .' # open Finder
alias bp='vi ~/.bash_profile'
alias br='vi ~/.bashrc'
alias sbp='source ~/.bash_profile'

# Homebrew
alias j='z'
alias s='subl' # open Sublime Text
alias sp='subl ~/.bash_profile'
alias sr='subl ~/.bashrc'
alias rm='trash'

################################################################################
# environment
################################################################################

# avoid 'brew doctor' errors of pyenv in anyenv
alias brew="env PATH=${PATH//\/Users\/${USER}\/\.anyenv\/envs\/pyenv\/shims:/} brew"
