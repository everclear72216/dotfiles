#! /bin/sh

echo "Setting up your config files..."
echo ""

SCRIPT="$(realpath $0)"
SCRIPTPATH="$(dirname $SCRIPT)"

set -e

echo "Installing required deb-packages..."

sudo ${SCRIPTPATH}/install_deb.sh 

echo "Installing required pip-packages..."

${SCRIPTPATH}/install_python.sh 

echo "Setting up symlinks..."
${SCRIPTPATH}/create_links.sh

echo "Configuring environment..."

${SCRIPTPATH}/do_configure.sh

echo "Done!"
echo ""
