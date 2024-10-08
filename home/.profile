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

# Java
export CPPFLAGS="-I/opt/homebrew/opt/openjdk@11/include"
export JAVA_17="/Library/Java/JavaVirtualMachines/openjdk-17.jdk/Contents/Home"
export JAVA_11="/Library/Java/JavaVirtualMachines/openjdk-11.jdk/Contents/Home"
export JAVA_HOME="/Library/Java/JavaVirtualMachines/openjdk-11.jdk/Contents/Home"
