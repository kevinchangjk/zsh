#! /bin/zsh 

# key variables
OS="mac"
REPOS="$HOME/repos"
ZSH_DOTS="$REPOS/zsh"
AS="$REPOS/arch/settings"
VIM="nvim"
alias vim=$VIM
[ "$OS" = "linux" ] && GAUSS="/run/media/khang/Gauss"

# zsh automagic completion
autoload -U compinit
compinit

function setup() {
  sourceDirs=(core brew)
  [ "$OS" = "linux" ] && sourceDirs+=(linux)
  for d in $sourceDirs[@]; do
    fs=($(fd --type file --base-directory=$ZSH_DOTS/$d))
    for f in $fs[@]; do
      source "$ZSH_DOTS/$d/$f";
    done
  done
}

setup
cd
