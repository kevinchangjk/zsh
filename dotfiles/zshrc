#! /bin/zsh 

DOTS="$HOME/.config/zsh/dotfiles"
REPOS="$HOME/repos"
ARCH="$HOME/repos/arch"
ARCH_HOME="$ARCH/home"
ARCH_DOTS="$ARCH/dotfiles"

dot_list+=("$DOTS/arch")
dot_list+=("$DOTS/exports")
dot_list+=("$DOTS/paths")
dot_list+=("$DOTS/prompt")
dot_list+=("$DOTS/math")
dot_list+=("$DOTS/code")
dot_list+=("$DOTS/specials")
dot_list+=("$DOTS/edits")
dot_list+=("$DOTS/aliases")

for file in $dot_list[@]; do
    source "$file"
done

alias zshrc="nvim $DOTS/zshrc"
alias reload="source ~/.zshrc"

bindkey "^[[3~" delete-char
bindkey '^[[Z' reverse-menu-complete
# disables <Esc> from entering vi mode
# bindkey -s '^[' ''
# bindkey '^[[1;2D' beginning-of-line
# bindkey '^[[1;2C' end-of-line
# bindkey '^[[1;2B' backward-word
# bindkey '^[[1;2A' forward-word
