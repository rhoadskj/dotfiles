# @rhoadskj
# github.com/rhoadskj/dotfiles

# source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# user specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# if running from tty1 start sway
if [ "$(tty)" = "/dev/tty1" ]; then
    exec sway
fi

# prompt customization
export PS1="[\[$(tput sgr0)\]\[\033[38;5;11m\]\u\[$(tput sgr0)\]\[\033[38;5;12m\]@\[$(tput sgr0)\]\[\033[38;5;14m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\]]\\$ \[$(tput sgr0)\]"

# aliases
alias ls="ls --color"
alias grep="grep --color"
alias tree="tree -C"
alias shutdown="shutdown now"
alias restart="shutdown -r now"
