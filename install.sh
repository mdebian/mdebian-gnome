#! /bin/sh

# Install the package
sudo dpkg -i mdebian-gnome*.deb

# Install the dependencies
sudo apt -f install
