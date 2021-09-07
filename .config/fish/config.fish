#!/usr/local/bin/fish

fish_vi_key_bindings
set fish_color_valid_path
set fish_greeting ""

#function fish_prompt
#         set_color red --bold
#         printf "["
#         set_color yellow
#         printf "%s" "$USER"
#         set_color green
#         printf "@"
#         set_color blue
#         printf "%s" "$hostname"
#         set_color magenta
#         printf " %s" (prompt_pwd)
#         set_color red --bold
#         printf "] "
#         set_color normal
#end

set fish_color_command brgreen --bold
set fish_color_normal brwhite
set fish_color_param normal

function fish_user_key_bindings
end

set -gx EDITOR nvim

set -gx LC_ALL en_US.UTF-8
set -gx LANG en_US.UTF-8

set -gx PATH ~/bin $PATH
set -gx PATH ~/.local/bin $PATH
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
set -gx JAVA_HOME /usr/local/Cellar/openjdk/16.0.2/libexec/openjdk.jdk/Contents/Home

set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; test -f /Users/carlos/.ghcup/env ; and set -gx PATH $HOME/.cabal/bin /Users/carlos/.ghcup/bin $PATH # ghcup-env

source ~/.config/fish/aliases.fish
source ~/.config/fish/lf_icons.fish

starship init fish | source
