#! /bin/bash

PACKAGES="
zsh
tmux
vim-nox
realpath
python3-pip
"

PYTHON_PACKAGES="
powerline-status
"

REPLACEMENTS="
vim
zshrc
vimrc
profile
tmux.conf
"

echo "Installing required packages..."
sudo apt-get install ${PACKAGES} &> /dev/null

SCRIPT="$(realpath $0)"
SCRIPTPATH="$(dirname $SCRIPT)"
echo "Script location: ${SCRIPTPATH}"

echo "Installing powerline..."
pip3 install --user ${PYTHON_PACKAGES} &> /dev/null

echo "Removing files and folders to be replaced..."
for FIL in ${REPLACEMENTS}
    do
        RECURSIVE=
        DESTINATION="~/.${FIL}"
        SOURCE="${SCRIPTPATH}/${FIL}"
 
        if [ -d "${SOURCE}" ]
            then
                RECURSIVE=r
        fi

        echo "Removing existing file or directory: ${DESTINATION}"
        rm -${RECURSIVE}f "${DESTINATION}"

        echo "Creating symbolic link: ${DESTINATION} -> ${SOURCE}"
        ln -sf "${DESTINATION}" "${SOURCE}"

    done

