#! /bin/sh

set -e

REPLACEMENTS="
vim
zshrc
vimrc
fonts
profile
tmux.conf
gnupg/gpg.conf
config/i3/config
config/powerline
powerline-shell.json
config/ranger/rc.conf
config/i3status/config
local/bin/stterm_launcher
local/share/applications/simple-terminal.desktop
"

SCRIPT="$(realpath $0)"
SCRIPTPATH="$(dirname $SCRIPT)"

for FILE in ${REPLACEMENTS}
    do
        RECURSIVE=
        DESTINATION="${HOME}/.${FILE}"
        SOURCE="${SCRIPTPATH}/../${FILE}"
 
        if [ -d "${SOURCE}" ]
            then
                RECURSIVE=r
        fi

        rm -${RECURSIVE}f "${DESTINATION}"

        DESTDIR=$(dirname "${DESTINATION}")
        mkdir -p "${DESTDIR}"

        ln -sf "${SOURCE}" "${DESTINATION}"
    done

