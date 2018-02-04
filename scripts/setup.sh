#! /bin/sh

echo "Setting up your config files..."
echo ""

SCRIPT="$(realpath $0)"
SCRIPTPATH="$(dirname $SCRIPT)"

set -e

echo "Installing required deb-packages..."
. ${SCRIPTPATH}/install_deb.sh
wait

echo "Installing required pip-packages..."
. ${SCRIPTPATH}/install_python.sh

echo "Setting up symlinks..."
. ${SCRIPTPATH}/create_links.sh

echo "Configuring environment..."
. ${SCRIPTPATH}/do_configure.sh

echo ""
echo "Done!"
echo ""
