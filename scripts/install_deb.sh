#! /bin/sh

set -e

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

apt-get install ${PACKAGES} &> /dev/null

