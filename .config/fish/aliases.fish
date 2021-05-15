alias v "nvim"
alias vconf "cd ~/.config/nvim && v ~/.config/nvim"

alias yta "youtube-dl --extract-audio --audio-format mp3 --output '~/Downloads/%(title)s.%(ext)s'" 

alias yabairc "v ~/.config/yabai/yabairc"
alias skhdrc "v ~/.config/skhd/skhdrc"

alias b "brew install"
alias bc "brew install --cask"
alias bs "brew search"

alias sub "osdb get -l spa"

function config
    command git --git-dir=$HOME/dotfiles --work-tree=$HOME $argv
end

alias lds "diskutil list"

alias l "exa -l -g --icons"
alias ll "exa -al -g --icons"
alias cl "clear"
