if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

autoload -U colors && colors
#PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "


export PATH=$HOME/bin:/usr/local/bin:$PATH
export PORT="/opt/local/"
export PATH=$PATH:$PORT/bin
export PATH=$PATH:$PORT/sbin
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
# Path to your oh-my-zsh installation.
export ZSH="/Users/carlos/.config/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"
LS_COLORS='no=00;37:fi=00:di=00;33:ln=04;36:pi=40;33:so=01;35:bd=40;33;01:'
export LS_COLORS
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
export LF_ICONS="\
tw=:\
st=:\
ow=:\
dt=:\
di=:\
fi=:\
ln=:\
or=:\
ex=:\
*.c=:\
*.cc=:\
*.clj=:\
*.coffee=:\
*.cpp=:\
*.css=:\
*.d=:\
*.dart=:\
*.erl=:\
*.exs=:\
*.fs=:\
*.go=:\
*.h=:\
*.hh=:\
*.hpp=:\
*.hs=:\
*.html=:\
*.java=:\
*.jl=:\
*.js=:\
*.json=:\
*.lua=:\
*.md=:\
*.php=:\
*.pl=:\
*.pro=:\
*.py=:\
*.rb=:\
*.rs=:\
*.scala=:\
*.ts=:\
*.vim=:\
*.cmd=:\
*.ps1=:\
*.sh=:\
*.bash=:\
*.zsh=:\
*.fish=:\
*.tar=:\
*.tgz=:\
*.arc=:\
*.arj=:\
*.taz=:\
*.lha=:\
*.lz4=:\
*.lzh=:\
*.lzma=:\
*.tlz=:\
*.txz=:\
*.tzo=:\
*.t7z=:\
*.zip=:\
*.z=:\
*.dz=:\
*.gz=:\
*.lrz=:\
*.lz=:\
*.lzo=:\
*.xz=:\
*.zst=:\
*.tzst=:\
*.bz2=:\
*.bz=:\
*.tbz=:\
*.tbz2=:\
*.tz=:\
*.deb=:\
*.rpm=:\
*.jar=:\
*.war=:\
*.ear=:\
*.sar=:\
*.rar=:\
*.alz=:\
*.ace=:\
*.zoo=:\
*.cpio=:\
*.7z=:\
*.rz=:\
*.cab=:\
*.wim=:\
*.swm=:\
*.dwm=:\
*.esd=:\
*.jpg=:\
*.jpeg=:\
*.mjpg=:\
*.mjpeg=:\
*.gif=:\
*.bmp=:\
*.pbm=:\
*.pgm=:\
*.ppm=:\
*.tga=:\
*.xbm=:\
*.xpm=:\
*.tif=:\
*.tiff=:\
*.png=:\
*.svg=:\
*.svgz=:\
*.mng=:\
*.pcx=:\
*.mov=:\
*.mpg=:\
*.mpeg=:\
*.m2v=:\
*.mkv=:\
*.webm=:\
*.ogm=:\
*.mp4=:\
*.m4v=:\
*.mp4v=:\
*.vob=:\
*.qt=:\
*.nuv=:\
*.wmv=:\
*.asf=:\
*.rm=:\
*.rmvb=:\
*.flc=:\
*.avi=:\
*.fli=:\
*.flv=:\
*.gl=:\
*.dl=:\
*.xcf=:\
*.xwd=:\
*.yuv=:\
*.cgm=:\
*.emf=:\
*.ogv=:\
*.ogx=:\
*.aac=:\
*.au=:\
*.flac=:\
*.m4a=:\
*.mid=:\
*.midi=:\
*.mka=:\
*.mp3=:\
*.mpc=:\
*.ogg=:\
*.ra=:\
*.wav=:\
*.oga=:\
*.opus=:\
*.spx=:\
*.xspf=:\
*.pdf=:\
*.nix=:\
"

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
