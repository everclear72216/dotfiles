#! /bin/bash

PACKAGES="
zsh
tmux
tree
stterm
vim-nox
realpath
python3-pip
"

PYTHON_PACKAGES="
powerline-shell
powerline-status
"

REPLACEMENTS="
vim
zshrc
vimrc
fonts
profile
tmux.conf
config/i3/config
config/powerline
powerline-shell.json
config/ranger/rc.conf
config/i3status/config
local/bin/stterm_launcher
local/share/applications/simple-terminal.desktop
"
echo "Preparing your environment..."
echo ""
echo "Installing required packages..."
echo ""
sudo apt-get install ${PACKAGES} &> /dev/null

SCRIPT="$(realpath $0)"
SCRIPTPATH="$(dirname $SCRIPT)"
echo "Script location: ${SCRIPTPATH}"
echo ""

echo "Installing powerline..."
echo ""
pip3 install --user ${PYTHON_PACKAGES} &> /dev/null

for FILE in ${REPLACEMENTS}
    do
        RECURSIVE=
        DESTINATION="${HOME}/.${FILE}"
        SOURCE="${SCRIPTPATH}/${FILE}"
 
        if [ -d "${SOURCE}" ]
            then
                RECURSIVE=r
        fi

        echo "Removing existing file or directory: ${DESTINATION}"
        rm -${RECURSIVE}f "${DESTINATION}"

        DESTDIR=$(dirname "${DESTINATION}")
        echo "Creating destination directory if missing: ${DESTDIR}"
        mkdir -p "${DESTDIR}"

        echo "Creating symbolic link: ${DESTINATION} -> ${SOURCE}"
        ln -sf "${SOURCE}" "${DESTINATION}"

        echo ""
    done

echo "Configuring Suckless Terminal..."
echo ""
gsettings set org.gnome.desktop.default-applications.terminal exec 'stterm_launcher'
