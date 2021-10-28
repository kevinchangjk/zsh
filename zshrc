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

# BEGIN_KITTY_SHELL_INTEGRATION
if test -e "$HOME/Applications/kitty.app/Contents/Resources/kitty/shell-integration/kitty.zsh"; then source "$HOME/Applications/kitty.app/Contents/Resources/kitty/shell-integration/kitty.zsh"; fi
# END_KITTY_SHELL_INTEGRATION
