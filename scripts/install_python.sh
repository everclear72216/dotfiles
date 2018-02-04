#! /bin/sh

set -e

PYTHON_PACKAGES="powerline-shell powerline-status"

echo "Installing python packages..."
echo "" 

pip3 install --user ${PYTHON_PACKAGES} &> /dev/null
