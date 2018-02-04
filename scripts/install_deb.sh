#! /bin/sh

set -e

PACKAGES="
zsh
tmux
tree
ranger
stterm
vim-nox
realpath
python3-pip
"

sudo apt-get -y install ${PACKAGES} &> /dev/null

