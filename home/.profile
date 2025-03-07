export XDG_CONFIG_HOME="$HOME/.config"
export PATH="$HOME/.local/bin/scripts":$PATH

export EDITOR=nvim

# Lang
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Brew
export PATH=/opt/homebrew/bin:$PATH

# Local Bin
export PATH=$HOME/.local/bin:$PATH
export PATH=/usr/local/bin:$PATH

# TinyTeX
export PATH=$HOME/Library/TinyTeX/bin/universal-darwin/:$PATH

# GO
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$PATH

# Python
export PATH=$HOME/Library/Python/3.9/bin:$PATH

# Bun
export BUN_INSTALL=$HOME/.bun
export PATH=$BUN_INSTALL/bin:$PATH

# PNPM
export PNPM_HOME=$HOME/Library/pnpm
if [ -z "$(echo $PATH | grep -o $PNPM_HOME)" ]; then
    export PATH=$PNPM_HOME:$PATH
fi

# FZF Colors
export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS'
    --color=fg:#e5e9f0,hl:#81a1c1
    --color=fg+:#e5e9f0,bg+:#3b4252,hl+:#81a1c1
    --color=info:#eacb8a,prompt:#bf6069,pointer:#b48dac
    --color=border:#4c566a,spinner:#b48dac,header:#a3be8b
    --color=marker:#a3be8b,spinner:#b48dac,header:#a3be8b'

# Java
export CPPFLAGS="-I/opt/homebrew/opt/openjdk@11/include"
export JAVA_17="/Library/Java/JavaVirtualMachines/openjdk-17.jdk/Contents/Home"
export JAVA_11="/Library/Java/JavaVirtualMachines/openjdk-11.jdk/Contents/Home"
export JAVA_HOME="/Library/Java/JavaVirtualMachines/openjdk-11.jdk/Contents/Home"

export SOMETHING="something"

# Herd injected PHP 8.3 configuration.
export HERD_PHP_83_INI_SCAN_DIR="/Users/carlos/Library/Application Support/Herd/config/php/83/"

# Herd injected PHP binary.
export PATH="/Users/carlos/Library/Application Support/Herd/bin/":$PATH
export TMUX_SESSIONIZER_DIRS="/Users/carlos/Dev /Users/carlos/Work"
