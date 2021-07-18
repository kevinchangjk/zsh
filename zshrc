#! /bin/zsh 

cd

# key variables
OS="linux" # either mac or linux
ZSH_DOTS="$HOME/repos/zsh"
REPOS="$HOME/repos"
VIM="nvim"
alias vim=$VIM
[ "$OS" = "linux" ] && GAUSS="/run/media/khang/Gauss"

# zsh automagic completion
autoload -U compinit
compinit

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
  code
  edits
  subs/clasp
  subs/openmath
  subs/git
  subs/firefox
  subs/keeb
  subs/me
  subs/nav
  subs/term
  subs/ssh
  subs/kitty
  )

dot_linux=(
  subs/dwm
  subs/mount
  subs/pacman
  subs/xorg
  )

# source the scripts
for file in $dot_list[@]; do source "$ZSH_DOTS/$file"; done
[ "$OS" = "linux" ] && for file in $dot_linux[@]; do source "$ZSH_DOTS/$file"; done

# key subses
alias zr="source ~/.zshrc"

# key key remaps
bindkey "^[[3~" delete-char
bindkey '^[[Z' reverse-menu-complete

clear
python "$ZSH_DOTS/quote/quotes.py"

alias ms="cd $REPOS/qmk_firmware && make keebio/iris/rev4:khang"
alias msf="cd $REPOS/qmk_firmware && make keebio/iris/rev4:khang:flash"
