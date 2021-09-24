#! /bin/zsh 

# key variables
REPOS="$HOME/repos"
ZSH_DOTS="$REPOS/zsh"
AS="$REPOS/arch/settings"
[ `uname` = "Linux" ] && GAUSS="/run/media/khang/Gauss"

# zsh automagic completion
autoload -U compinit
compinit

function setup() {
  sourceDirs=()
  [ `uname` = "Linux" ] && sourceDirs+=(linux)
  [ `uname` = "Darwin" ] && sourceDirs+=(mac)
  sourceDirs+=(core brew)
  for d in $sourceDirs[@]; do
    fs=($(fd --type file --base-directory=$ZSH_DOTS/$d))
    for f in $fs[@]; do
      source "$ZSH_DOTS/$d/$f";
    done
  done
}

setup
cd
clear
[ `uname` = "Linux" ] && python "$ZSH_DOTS/quote/quotes.py" || return true
