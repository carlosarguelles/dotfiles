#!/bin/sh

branch_name=$(git branch --show-current | awk -F'/' '{print $NF}')

~/.local/bin/scripts/commit-message-with-gitmoji.sh "$1" "$branch_name" "$2"
