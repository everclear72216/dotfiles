#! /bin/sh

PACKAGES="
zsh
tmux
tree
stterm
vim-nox
realpath
python3-pip
"

echo "Installing required packages..."
echo ""

sudo apt-get install ${PACKAGES} &> /dev/null

