# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

export TERM=xterm-256color

function powerline_precmd() {
	PS1="$(powerline-shell --shell zsh $?)"
}

function install_powerline_precmd() {
	for s in "${precmd_functions[@]}"; do
		if [ "$s" = "powerline_precmd" ]; then
			return
		fi
	done
	precmd_functions+=(powerline_precmd)
}

if [ "$TERM" != "linux" ]; then
	install_powerline_precmd
fi

zstyle ':completion:complete:*:git:*' ignored-patterns 'check*-*'

alias ll='ls -l'
alias la='ls -all'
