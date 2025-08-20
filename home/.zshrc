ZINIT_HOME="$HOME/.local/share/zinit/zinit.git"

if [ ! -d "$ZINIT_HOME" ]; then
    mkdir -p "$(dirname $ZINIT_HOME)"
    git clone https://github.com/zdharma-continuum/zinit.git $ZINIT_HOME
fi

source "$ZINIT_HOME/zinit.zsh"

zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab

autoload -U compinit && compinit

zinit cdreplay -q

unsetopt BEEP

DISABLE_AUTO_TITLE="true"
HISTSIZE=5000
HISTFILE=$HOME/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'

bindkey -v
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward
bindkey '^[w' kill-region

# Colors
ZSH_HIGHLIGHT_STYLES[alias]=fg=blue
ZSH_HIGHLIGHT_STYLES[builtin]=fg=blue
ZSH_HIGHLIGHT_STYLES[function]=fg=blue
ZSH_HIGHLIGHT_STYLES[command]=fg=blue

eval "$(fzf --zsh)"

eval "$(/opt/homebrew/bin/brew shellenv)"

source $HOME/.aliases.zsh
source $HOME/.profile

bindkey -s ^f "tmux-sessionizer.sh\n"

eval "$(zoxide init zsh)"

eval "$(direnv hook zsh)"

printf '\033]2;\033\\'

eval "$(starship init zsh)"
