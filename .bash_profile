# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoredups:ignorespace

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

if hash shopt 2>/dev/null; then
    # check the window size after each command and, if necessary, update the values of LINES and COLUMNS.
    shopt -s checkwinsize
    # append to the history file, don't overwrite it
    shopt -s histappend
fi

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# Environemnt
#-------------------------
export EDITOR=/usr/bin/vim
export PATH=$PATH:$HOME/bin
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# Shell specific settings
if [ -n "$BASH_VERSION" ]; then
    # Git
    if [ -f ~/.lib/completion/git/git-bash-completion.bash ]; then
        . ~/.lib/completion/git/git-bash-completion.bash
        __git_complete gp _git_pull
        __git_complete g _git
        __git_complete gc _git_checkout
        __git_complete gm __git_merge
    fi
    # GCloud
    . ~/.lib/completion/gcloud/kubectl.completion.bash
    . ~/.lib/completion/gcloud/path.bash.inc
fi    
if [ -n "$ZSH_VERSION" ]; then
    # GCloud
    . ~/.lib/completion/gcloud/completion.zsh.inc
    . ~/.lib/completion/gcloud/path.zsh.inc
fi

# Google Cloud SDK
GCLOUD_PATH=~/tools/google-cloud-sdk/bin
if [ -d ~/tools/google-cloud-sdk/bin ]; then export PATH=$PATH:$GCLOUD_PATH; fi;

# sdkman
export SDKMAN_DIR=~/.sdkman
if [ -f ~/.sdkman/bin/sdkman-init.sh ]; then
    . ~/.sdkman/bin/sdkman-init.sh
fi    

# Robot Operating System (Melodic Morenia)
if [ -d /opt/ros/melodic ]; then
    if [ -n "$BASH_VERSION" ]; then
        . /opt/ros/melodic/setup.bash
    fi
    if [ -n "$ZSH_VERSION" ]; then
        . /opt/ros/melodic/setup.zsh
    fi
fi

# Alias definitions
#-------------------------
if [ -f ~/.aliases ]; then
    . ~/.aliases
fi

# Prompt
if [ -f ~/.bash_prompt ]; then
    . ~/.bash_prompt
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

# z
if [ -f ~/.lib/z.sh ]; then
    . ~/.lib/z.sh
fi

