################################################################################
# basic settings
################################################################################

## fish
fish_vi_key_bindings

# homebrew
set -x PATH /usr/local/bin:/usr/local/sbin $PATH
export HOMEBREW_CACHE=~/Library/Caches/Homebrew
export HOMEBREW_EDITOR=/usr/local/bin/vim
# export HOMEBREW_GITHUB_API_TOKEN=XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

# git
export GIT_TERMINAL_PROMPT=0
export GIT_PS1_SHOWDIRTYSTATE=true

# openssl
set -x PATH /usr/local/opt/openssl/bin $PATH

# python user packages to use `pip install --user`
set -x PATH $HOME/.local/bin $PATH

# fzf
set -U FZF_LEGACY_KEYBINDINGS 0
set -U FZF_REVERSE_ISEARCH_OPTS "--reverse --height=100%"

################################################################################
# functions
################################################################################

function fish_user_key_bindings
  bind \cr 'peco_select_history (commandline -b)'
end

function peco_select_history_order
  if test (count $argv) = 0
    set peco_flags --layout=top-down
  else
    set peco_flags --layout=bottom-up --query "$argv"
  end

  history|peco $peco_flags|read foo

  if [ $foo ]
    commandline $foo
  else
    commandline ''
  end
end

################################################################################
# aliases
################################################################################

# alias ls='ls -F -G'
# alias ll='ls -l'
# alias la='ls -a'
# alias lla='ls -la'
# alias rm='rm -i'
# alias rd='rmdir'
alias ...='cd ../..'
alias ....='cd ../../..'
alias relogin='exec $SHELL -l'
alias df='df -h' # display MB instead of KB
alias f='open .' # open Finder
alias myip='curl ifconfig.io'

alias brewup='brew upgrade && brew cask upgrade'
alias j='z'
alias rm='trash'
alias cat='ccat'

alias c='code' # open Visual Studio Code

export FISH_CONF=$HOME/.config/fish/config.fish
alias ef='vi $FISH_CONF'
alias reload='source $FISH_CONF'

################################################################################
# others
################################################################################

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
# export SDKMAN_DIR="/Users/sasakikeisuke/.sdkman"
# [[ -s "/Users/sasakikeisuke/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/sasakikeisuke/.sdkman/bin/sdkman-init.sh"

# anyenv
set -x PATH $HOME/.anyenv/bin $PATH
status --is-interactive; and source (anyenv init -|psub)

# anyenv settings on tmux
# for D in `ls $HOME/.anyenv/envs`
# do
#     set -x PATH "$HOME/.anyenv/envs/$D/shims $PATH"
# done

# avoid openssl missing error for python3.7
# export CONFIGURE_OPTS="--with-openssl=$(brew --prefix openssl)"

# pipenv
export PIPENV_VENV_IN_PROJECT=1

# Android SDK
export ANDROID_HOME=$HOME/Library/Android/sdk
set -x PATH $PATH $ANDROID_HOME/tools
set -x PATH $PATH $ANDROID_HOME/tools/bin
set -x PATH $PATH $ANDROID_HOME/platform-tools

# Golang
export GOPATH=$HOME/go
set -x PATH $GOPATH/bin $PATH

# TypeScript runtime
set -x PATH $HOME/.deno/bin $PATH

# avoid brew doctor errors of pyenv in anyenv
# alias brew="env PATH=${PATH//\/Users\/${USER}\/\.anyenv\/envs\/pyenv\/shims:/} brew"

# added by travis gem
# [ -f /Users/sasakikeisuke/.travis/travis.sh ] && source /Users/sasakikeisuke/.travis/travis.sh
