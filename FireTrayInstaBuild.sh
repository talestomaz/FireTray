#!/bin/bash
curdir=`pwd`
tmpdir=`mktemp -d`
cd "$tmpdir"
git clone https://github.com/LaserTron/FireTray.git
cd ./FireTray
version=`git rev-parse --short HEAD`
cd src
make build
cd ..
cp build-$version/firetray-0.6.1.xpi "$curdir"
rm -Rf "$tmpdir"
cd "$curdir"
