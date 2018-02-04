if [ -d "$HOME/.local/bin" ] 
    then
	PATH="$HOME/.local/bin:$PATH"
fi

export TERMINAL=stterm_launcher

export GPG_TTY=$(tty)
