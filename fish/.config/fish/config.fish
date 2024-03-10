#!/usr/local/bin/fish
fish_vi_key_bindings
set -U fish_cursor_default block
set fish_greeting ""
set -gx EDITOR nvim
set -gx LC_ALL en_US.UTF-8
set -gx LANG en_US.UTF-8
set -gx PATH /opt/homebrew/bin $PATH
set -gx PATH ~/bin $PATH
set -gx PATH ~/.local/bin $PATH
set -gx PATH /usr/local/bin $PATH
set -gx PATH /usr/local/sbin $PATH
set -gx LOCAL /opt/local
set -gx PATH $LOCAL/bin $PATH
set -gx PATH $LOCAL/sbin $PATH
set -gx PATH /usr/local/opt/coreutils/libexec/gnubin $PATH
set -gx PATH $HOME/Library/TinyTeX/bin/universal-darwin/ $PATH
set -gx PATH /usr/local/go/bin/ $PATH
set -gx GOPATH $HOME/go
set -gx PATH $GOPATH/bin $PATH
set -gx PATH $HOME/Library/Python/3.9/bin $PATH
set -gx PATH $HOME/.cargo/bin $PATH
set -gx BUN_INSTALL $HOME/.bun
set -gx PATH $BUN_INSTALL/bin $PATH
source ~/.config/fish/aliases.fish
source ~/.config/fish/colors.fish
source "$(brew --prefix)/share/google-cloud-sdk/path.fish.inc"

# opam configuration
source /Users/carlos/.opam/opam-init/init.fish >/dev/null 2>/dev/null; or true

# pnpm
set -gx PNPM_HOME /Users/carlos/Library/pnpm
if not string match -q -- $PNPM_HOME $PATH
    set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

