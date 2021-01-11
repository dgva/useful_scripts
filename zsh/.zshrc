################################################################################
# Default settings from .zsh installation

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
# bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '~/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# This allows for case-insensitive completion, but only from lowercase to uppercase
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

################################################################################


################################################################################
# Personal .zshrc config

# function to return current branch name while suppressing errors.
function git_branch() {
    branch=$(git symbolic-ref HEAD 2> /dev/null | awk 'BEGIN{FS="/"} {print $NF}')
    if [[ $branch == "" ]]; then
        :
    else
        echo '(%F{#EF2929}'$branch'%f)'
    fi
}

setopt prompt_subst             # allow command substitution inside the prompt

PROMPT='%F{#009CFF}|%D - %*|%f %F{#EDBD00}%M%f in %F{#0CBB00}%~%f $(git_branch)'$'\n''-> '

export EDITOR=gedit

alias sd='sudo '
alias ez='$EDITOR ~/.zshrc'
alias sz='source ~/.zshrc'
alias lf='ls -AlhF'
alias mydata='cd /mnt/sda1/'
alias uplist='apt update && apt list --upgradable'
################################################################################