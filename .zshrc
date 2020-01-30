# Initialize zplug via brew
export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

# Load configuration framework
zplug "sorin-ionescu/prezto"

# Load pachages
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-history-substring-search"

zplug "RobSis/zsh-completion-generator", if:"GENCOMPL_FPATH=$HOME/.zsh/complete"
zplug "plugins/git", from:oh-my-zsh
zplug "peterhurford/git-aliases.zsh"

zplug "mafredri/zsh-async", from:github
zplug "marzocchi/zsh-notify"
zplug "Tarrasch/zsh-functional"
zplug "willghatch/zsh-hooks"
zplug "unixorn/warhol.plugin.zsh"
zplug "mollifier/zload"
zplug "b4b4r07/enhancd", use:enhancd.sh
zplug "stedolan/jq", from:gh-r, as:command
zplug "b4b4r07/emoji-cli", if:"which jq"
zplug "mrowa44/emojify", as:command
zplug "junegunn/fzf-bin", as:command, from:gh-r, rename-to:fzf
zplug "junegunn/fzf", as:command, use:bin/fzf-tmux
zplug "mollifier/anyframe"
zplug "b4b4r07/zsh-gomi", as:command, use:bin, rename-to:rm

# Load theme file
zplug 'dracula/zsh', as:theme

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Source plugins and add commands to $PATH
zplug load

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
################################################################################
# basic settings
################################################################################

# zsh
autoload -Uz compinit && compinit
# setopt auto_list
# setopt auto_menu
# setopt auto_cd
# export LANG=ja_JP.UTF-8
# HISTFILE=$HOME/.zsh-history
# HISTSIZE=1000000
# SAVEHIST=1000000
# setopt share_history

# homebrew
export PATH=/usr/local/bin:/usr/local/sbin:$PATH
export HOMEBREW_CACHE=~/Library/Caches/Homebrew
export HOMEBREW_EDITOR=/usr/local/bin/vim
# export HOMEBREW_GITHUB_API_TOKEN=XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

# git
export GIT_TERMINAL_PROMPT=0
export GIT_PS1_SHOWDIRTYSTATE=true

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

# alias ls='ls -F -G'
# alias ll='ls -l'
# alias la='ls -a'
alias lla='ls -la'
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

################################################################################
# others
################################################################################
