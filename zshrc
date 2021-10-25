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
    fs=($(find $ZSH_DOTS/$d -type f))
    for f in $fs[@]; do source "$f"; done
  done
}

setup
clear && cd
# [ `uname` = "Linux" ] && python "$ZSH_DOTS/quote/quotes.py" || return true

alias luamake=/Users/khang/files/cli-deps/lua-language-server/3rd/luamake/luamake
