#! /bin/zsh 

# key variables
OS="linux"
REPOS="$HOME/repos"
ZSH_DOTS="$REPOS/zsh"
AS="$REPOS/arch/settings"
VIM="$HOME/.local/bin/nvim"
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
clear
[ "$OS" = "linux" ] && python "$ZSH_DOTS/quote/quotes.py"
