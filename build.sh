#!/bin/bash
# run this script from the package root directory, /build

# copy mounted project to an unmounted /build
cp -r /pkg/. /build

# install build-deps
mk-build-deps --install --tool "apt-get -y --force-yes" debian/control

# build debian package
dpkg-buildpackage -us -uc

# place resulting .deb in mounted /pkg
mv /*.deb /pkg
