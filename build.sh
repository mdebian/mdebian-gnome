#! /bin/sh

# Remove previous package
rm -fv mdebian-gnome*.deb

# Build the package
fakeroot dpkg-deb --build mdebian-gnome

# Get the version number of the package
VERSION=$(cat mdebian-gnome/DEBIAN/control | grep Version | awk '{print $2}')

# Rename the package to include the version number
mv -fv mdebian-gnome.deb mdebian-gnome_${VERSION}.deb
