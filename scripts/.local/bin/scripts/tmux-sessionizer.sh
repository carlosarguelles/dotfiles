#!/bin/sh

# FZF Colors
export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS'
    --color=fg:#e5e9f0,hl:#81a1c1
    --color=fg+:#e5e9f0,bg+:#3b4252,hl+:#81a1c1
    --color=info:#eacb8a,prompt:#bf6069,pointer:#b48dac
    --color=border:#4c566a,spinner:#b48dac,header:#a3be8b
    --color=marker:#a3be8b,spinner:#b48dac,header:#a3be8b'

read -r -a DIRS <<< "$TMUX_SESSIONIZER_DIRS"

if [[ $# -eq 1 ]]; then
  selected=$1
else
  selected=$(find "${DIRS[@]}" -mindepth 1 -maxdepth 1 -type d | fzf --reverse --border --preview 'ls --color {}')
fi

if [[ -z $selected ]]; then
  exit 0
fi

selected_name=$(basename "$selected" | tr . _)
tmux_running=$(pgrep tmux)

if [[ -z $TMUX ]] && [[ -z $tmux_running ]]; then
  tmux new-session -s $selected_name -c $selected
  exit 0
fi

if ! tmux has-session -t=$selected_name 2>/dev/null; then
  tmux new-session -ds $selected_name -c $selected
fi

tmux switch-client -t $selected_name
