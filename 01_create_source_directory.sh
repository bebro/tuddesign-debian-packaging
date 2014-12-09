#!/bin/bash
export VERSION_NEU=1.0.20141209
export VERSION_ALT=1.0.20140920

rm -R latex-tuddesign-$VERSION_NEU
wget https://github.com/bebro/tuddesign/archive/$VERSION_NEU.tar.gz -O latex-tuddesign_$VERSION_NEU.orig.tar.gz
tar -xf latex-tuddesign_$VERSION_NEU.orig.tar.gz
mv tuddesign-$VERSION_NEU/ latex-tuddesign-$VERSION_NEU/
cp -R debian/ latex-tuddesign-$VERSION_NEU/debian/
cd latex-tuddesign-$VERSION_NEU/
dquilt push -a

cd ..
