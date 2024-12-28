# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# Useful scripts
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# Aliases
if [ -f ~/.aliases ]; then
    . ~/.aliases
fi

# Set environment variables
export LESSHISTFILE=-
export PATH=$PATH:/usr/local/go/bin

startx
