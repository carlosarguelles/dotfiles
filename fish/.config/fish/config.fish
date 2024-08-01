#!/usr/local/bin/fish
fish_vi_key_bindings
set -U fish_cursor_default block
set fish_greeting ""

function fish_mode_prompt
end

source ~/.config/fish/aliases.fish
source ~/.config/fish/colors.fish
source ~/.config/fish/prompt.fish

fenv source $HOME/.profile
