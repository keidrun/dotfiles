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
export HOMEBREW_EDITOR=/usr/local/bin/subl
export HOMEBREW_GITHUB_API_TOKEN=e591f13c4304e093c6f762abc73b1518bf68e643 # use your token

# bash-completion
[ -f `brew --prefix`/etc/bash_completion ] && . `brew --prefix`/etc/bash_completion

# git
GIT_TERMINAL_PROMPT=0
GIT_PS1_SHOWDIRTYSTATE=true
export PS1='\h:\[\033[33m\]\W\[\033[00m\] \[\033[32m\]\u\[\033[00m\]\[\033[31m\]$(__git_ps1 [%s])\[\033[00m\]\$ '

# z
[ -f `brew --prefix`/etc/profile.d/z.sh ] && . `brew --prefix`/etc/profile.d/z.sh

################################################################################
# environment
################################################################################

# anyenv
export PATH="$HOME/.anyenv/bin:$PATH"
eval "$(anyenv init -)"
# anyenv settings on tmux
for D in `ls $HOME/.anyenv/envs`
do
    export PATH="$HOME/.anyenv/envs/$D/shims:$PATH"
done

# virtualenv for pyenv
eval "$(pyenv virtualenv-init -)"
