set fish_vi_key_bindings

set fish_greeting ""
set fish_color_command green

set -gx EDITOR nvim

set -gx LC_ALL en_US.UTF-8
set -gx LANG en_US.UTF-8

set -gx PATH ~/bin $PATH
set -gx PATH /usr/local/bin $PATH
set -gx PATH /usr/local/sbin $PATH

set -gx PORT /opt/local 
set -gx PATH $PORT/bin $PATH
set -gx PATH $PORT/sbin $PATH

set -gx PATH /usr/local/opt/coreutils/libexec/gnubin $PATH

set -gx PATH /Library/TeX/texbin/ $PATH

set -gx GOPATH $HOME/go
set -gx PATH $GOPATH/bin $PATH 

set -gx PATH $HOME/.cargo/bin $PATH

set -gx PATH /usr/local/opt/openjdk/bin $PATH
set -gx CPPFLAGS "-I/usr/local/opt/openjdk/include"
set -gx JAVA_HOME /usr/local/Cellar/openjdk/16.0.1/libexec/openjdk.jdk/Contents/Home

source ~/.config/fish/aliases.fish
source ~/.config/fish/theme.fish

starship init fish | source
set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; test -f /Users/carlos/.ghcup/env ; and set -gx PATH $HOME/.cabal/bin /Users/carlos/.ghcup/bin $PATH # ghcup-env
