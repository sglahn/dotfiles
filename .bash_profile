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

# git bash completion
if [ -n "$BASH_VERSION" ]; then
    if [ -f ~/.lib/git-bash-completion.bash ]; then
        . ~/.lib/git-bash-completion.bash
        __git_complete gp _git_pull
        __git_complete g _git
        __git_complete gc _git_checkout
        __git_complete gm __git_merge
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

