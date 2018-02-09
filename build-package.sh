#! /bin/sh

# Define the package name
PKG=mdebian-gnome

# Build the package
fakeroot dpkg-deb --build ${PKG}

# Rename the package to include the version number
VERSION=$(cat ${PKG}/DEBIAN/control | grep Version | awk '{print $2}')
mv -fv ${PKG}.deb ${PKG}_${VERSION}.deb
