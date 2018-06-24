# If you come from bash you might have to change your $PATH.

powerline-daemon -q

export GPG_TTY=$(tty)
export TERM=xterm-256color
export XDG_CONFIG_HOME=$HOME/.config/

. $HOME/.local/lib/python3.6/site-packages/powerline/bindings/zsh/powerline.zsh

zstyle ':completion:complete:*:git:*' ignored-patterns 'check*-*'

alias ll='ls -l'
alias la='ls -all'

