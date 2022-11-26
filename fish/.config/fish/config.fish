#!/usr/local/bin/fish

fish_vi_key_bindings
set -U fish_cursor_default block
set fish_greeting ""

set -gx EDITOR nvim

set -gx LC_ALL en_US.UTF-8
set -gx LANG en_US.UTF-8

set -gx PATH ~/bin $PATH
set -gx PATH ~/.local/bin $PATH
set -gx PATH /usr/local/bin $PATH
set -gx PATH /usr/local/sbin $PATH

set -gx LOCAL /opt/local  
set -gx PATH $LOCAL/bin $PATH
set -gx PATH $LOCAL/sbin $PATH

set -gx PATH /usr/local/opt/coreutils/libexec/gnubin $PATH

set -gx PATH /Library/TeX/texbin/ $PATH

set -gx PATH /usr/local/go/bin/ $PATH
set -gx GOPATH $HOME/go
set -gx PATH $GOPATH/bin $PATH 

set -gx PATH $HOME/.cargo/bin $PATH
set -gx PATH $HOME/.composer/vendor/bin $PATH

set -gx PATH /usr/local/opt/openjdk/bin $PATH
set -gx CPPFLAGS "-I/usr/local/opt/openjdk/include"
set -gx JAVA_HOME /usr/local/Cellar/openjdk/16.0.2/libexec/openjdk.jdk/Contents/Home

source ~/.config/fish/aliases.fish
source ~/.config/fish/colors.fish

# starship init fish | source
