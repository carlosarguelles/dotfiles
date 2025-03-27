#!/bin/sh

# FZF Colors
export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS'
    --color=fg:#e5e9f0,hl:#81a1c1
    --color=fg+:#e5e9f0,bg+:#3b4252,hl+:#81a1c1
    --color=info:#eacb8a,prompt:#bf6069,pointer:#b48dac
    --color=border:#4c566a,spinner:#b48dac,header:#a3be8b
    --color=marker:#a3be8b,spinner:#b48dac,header:#a3be8b'

if [[ $# -eq 1 ]]; then
  selected=$1
else
  selected=$(tmux list-sessions -F '#S' | fzf --reverse --border --border-label 'Active Sessions')
fi

if [[ -z $selected ]]; then
  exit 0
fi

tmux switch-client -t $selected
