#!/usr/local/bin/fish
fish_vi_key_bindings
set -U fish_cursor_default block
set fish_greeting ""

function fish_mode_prompt
end

source ~/.config/fish/aliases.fish
source ~/.config/fish/colors.fish

fenv source $HOME/.profile

# Vendor
source "$(brew --prefix)/share/google-cloud-sdk/path.fish.inc"
source $HOME/.opam/opam-init/init.fish >/dev/null 2>/dev/null; or true
