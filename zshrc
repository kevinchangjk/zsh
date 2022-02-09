#! /bin/zsh 

# key variables
export REPOS="$HOME/ripples"
export ZSH_DOTS="$REPOS/zsh"
export VIM_CONFIG="$HOME/.config/nvim"
export ONE_KCJK="$HOME/OneDrive"

# zsh automagic completion
autoload -U compinit
compinit

function setup() {
  sourceDirs=()
  [ `uname` = "Linux" ] && sourceDirs+=(linux)
  # [ `uname` = "Darwin" ] && sourceDirs+=(mac)
  sourceDirs+=(core brew)
  for d in $sourceDirs[@]; do
    fs=($(find $ZSH_DOTS/$d -type f))
    for f in $fs[@]; do source "$f"; done
  done
}

setup
printf '\033[2J\033[3J\033[1;1H' # clears screen
cd
# [ `uname` = "Linux" ] && python "$ZSH_DOTS/quote/quotes.py" || return true
