################################################################################
# Default settings from .zsh installation

# Lines configured by zsh-newuser-install
HISTFILE=/tmp/.histfile
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

## General alias
alias sd='sudo '
alias edz='$EDITOR ~/.zshrc && echo ZSH config edited!'
alias srz='source ~/.zshrc && echo ZSH config reloaded!'
alias ls='ls --color=auto'
alias lf='ls -AlhF'
alias newapps='sudo apt update && apt list --upgradable'
alias getnewapps='sudo apt upgrade'
alias cleanapps='sudo apt autoremove --purge && apt clean'
alias purgeapp='sudo apt purge '
alias listapps='sudo apt list --installed '
alias doihave='sudo apt list --installed | grep '
alias isthere='sudo apt search '
alias getapp='sudo apt install '
alias gs='git status'
alias ga='git add .'
alias gc='git commit'
alias gp='git push'
alias c='clear'
## Personal alias
alias nemohere='nemo ./'
alias startlampp='sudo /opt/lampp/lampp start'
alias stoplampp='sudo /opt/lampp/lampp stop'
alias guilampp='cd /opt/lampp && sudo ./manager-linux-x64.run'
## Folders/links alias
alias ..='cd ..'
alias ..2='cd ../..'
alias ..3='cd ../../..'
alias ..4='cd ../../../..'
alias ..5='cd ../../../../..'
alias mydata='cd /mnt/sda1/'
alias mycode='cd /mnt/sda1/Code/'
alias mygis='cd /mnt/sda1/GIS/'
alias mydocs='cd /mnt/sda1/Docs/'
alias mymusic='cd /mnt/sda1/Music/'
alias myvids='cd /mnt/sda1/Vids/'
alias mygaming='cd /mnt/sda1/Gaming/'

################################################################################
