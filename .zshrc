if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

autoload -U colors && colors
#PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

# LANG
export LC_ALL=en_US.UTF-8  
export LANG=en_US.UTF-8

export PATH=$HOME/bin:/usr/local/bin:$PATH
export PORT="/opt/local/"
export PATH=$PATH:$PORT/bin
export PATH=$PATH:$PORT/sbin
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
# Path to your oh-my-zsh installation.
export ZSH="/Users/carlos/.config/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

export EDITOR=nvim
export HOMEBREW_FORCE_BREWED_CURL=1
plugins=(osx zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# PYENV

# THEME CONFIGUARTION
#SPACESHIP_PROMPT_PREFIXES_SHOW=false
#SPACESHIP_PROMPT_ADD_NEWLINE=false
timezsh() {
  shell=${1-$SHELL}
  for i in $(seq 1 10); do /usr/bin/time $shell -i -c exit; done
}


# GO ENV
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export PATH="/usr/local/sbin:$PATH"

# LF CONFIGUARTION
export LFPATH="/Users/carlos/.config/lf/"
source $LFPATH/lfcd.sh
bindkey -s '^o' 'lfcd\n'  

#MORE CUSTOMIZATIONS
# vi mode
bindkey -v
export KEYTIMEOUT=1

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

# Change cursor shape for different vi modes.
function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]] ||
     [[ $1 = 'block' ]]; then
    echo -ne '\e[1 q'
  elif [[ ${KEYMAP} == main ]] ||
       [[ ${KEYMAP} == viins ]] ||
       [[ ${KEYMAP} = '' ]] ||
       [[ $1 = 'beam' ]]; then
    echo -ne '\e[5 q'
  fi
}
zle -N zle-keymap-select
zle-line-init() {
    zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
    echo -ne "\e[5 q"
}
zle -N zle-line-init
echo -ne '\e[5 q' # Use beam shape cursor on startup.
preexec() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.

#ALIAS
alias v="nvim"
alias zshconfig="v ~/.zshrc"
alias ohmyzsh="v ~/.oh-my-zsh"
alias yta="youtube-dl --extract-audio --audio-format mp3 --output '~/Downloads/%(title)s.%(ext)s'" 
alias yabaiconfig="v ~/.config/yabai/yabairc"
alias limelightconfig="v /Users/carlos/.config/limelight/config/limelightrc"
alias sp="spotify play"
alias vconfig="v ~/.config/nvim"
alias b="brew install"
alias bc="brew install --cask"
alias bs="brew search"
alias skhdconfig="v ~/.config/skhd/skhdrc"
alias opdf="open -a Skim.app"
alias sub="osdb get -l spa"
alias config="git --git-dir=$HOME/dotfiles --work-tree=$HOME"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
