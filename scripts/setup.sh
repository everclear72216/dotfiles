#! /bin/sh

echo "Setting up your config files..."
echo ""

set -e

echo "Installing required deb-packages..."

./install_deb.sh

echo "Installing required pip-packages..."

./install_python.sh

echo "Setting up symlinks..."
./create_links.sh

echo "Configuring environment..."

./do_configure.sh

echo "Done!"
echo ""
