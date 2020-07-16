# @rhoadskj
# github.com/rhoadskj/dotfiles

if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

if [ "$(tty)" = "/dev/tty1" ]; then
    exec i3
fi

export PS1="[\[$(tput sgr0)\]\[\033[38;5;11m\]\u\[$(tput sgr0)\]\[\033[38;5;12m\]@\[$(tput sgr0)\]\[\033[38;5;14m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\]]\\$ \[$(tput sgr0)\]"

# these get made by firefox sometimes, and I don't want them
rm -rf ~/Downloads
rm -rf ~/Desktop

# aliases
alias ls="ls --color"
alias grep="grep --color"
alias tree="tree -C"
alias shutdown="shutdown now"
alias restart="shutdown -r now"
alias q="clear"
