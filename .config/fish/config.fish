fish_vi_key_bindings
set fish_cursor_default block
set fish_cursor_insert line
set fish_cursor_replace_one underscore
set fish_cursor_replace underscore
set fish_cursor_visual block

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

source ~/.config/fish/aliases.fish
source ~/.config/fish/theme.fish
