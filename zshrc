#! /bin/zsh 

ZSH_DOTS="$HOME/repos/zsh"
REPOS="$HOME/repos"

NORMAL="\e[1;0m"
BLACK="\e[1;30m"
RED="\e[1;31m"
GREEN="\e[1;32m"
YELLOW="\e[1;33m"
BLUE="\e[1;34m"
MAGENTA="\e[1;35m"
CYAN="\e[1;36m"
WHITE="\e[1;37m"

dot_list=(
    arch
    exports
    paths
    prompt
    math
    code
    specials
    edits
    aliases
    )

for file in $dot_list[@]; do
    source "$ZSH_DOTS/$file"
done

alias zshrc="nvim $ZSH_DOTS/zshrc"
alias reload="source ~/.zshrc"

bindkey "^[[3~" delete-char
bindkey '^[[Z' reverse-menu-complete
# disables <Esc> from entering vi mode
# bindkey -s '^[' ''
# bindkey '^[[1;2D' beginning-of-line
# bindkey '^[[1;2C' end-of-line
# bindkey '^[[1;2B' backward-word
# bindkey '^[[1;2A' forward-word
