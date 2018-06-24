if [ -d "$HOME/.local/bin" ] 
    then
	PATH="$HOME/.local/bin:$PATH"
fi

if [ -d "$HOME/.local/lib" ]
    then
        PATH="$HOME/.local/lib:$PATH"
fi

if [ -d "$HOME/.cargo/bin" ]
    then
        PATH="$HOME/.cargo/bin:$PATH"
fi 

export SHELL=/bin/zsh
export TERMINAL=stterm_launcher

