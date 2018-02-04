#! /bin/sh

set -e

PYTHON_PACKAGES="powerline-shell powerline-status"

pip3 install --user ${PYTHON_PACKAGES} &> /dev/null
