#! /bin/zsh 

cd

# key variables
ZSH_DOTS="$HOME/repos/zsh"
REPOS="$HOME/repos"
VIM="nvim"

# colors
NORMAL="\e[1;0m"
BLACK="\e[1;30m"
RED="\e[1;31m"
GREEN="\e[1;32m"
YELLOW="\e[1;33m"
BLUE="\e[1;34m"
MAGENTA="\e[1;35m"
CYAN="\e[1;36m"
WHITE="\e[1;37m"

# scripts to be sourced
dot_list=(
    exports
    paths
    prompt
    math
    code
    edits
    alias/dwm
    alias/git
    alias/firefox
    alias/keeb
    alias/me
    alias/mount
    alias/nav
    alias/pacman
    alias/term
    alias/xorg
    )

# source the scripts
for file in $dot_list[@]; do
    source "$ZSH_DOTS/$file"
done

# key aliases
alias zr="source ~/.zshrc"

# key key remaps
bindkey "^[[3~" delete-char
bindkey '^[[Z' reverse-menu-complete

clear
python "$ZSH_DOTS/quote/quotes.py"
