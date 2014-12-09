#!/bin/bash
VERSION_NEU=1.0.20141024
VERSION_ALT=1.0.20140920

cd latex-tuddesign-$VERSION_NEU/
debuild
cd ..
mv latex-tuddesign_"$VERSION_NEU"_i386.build build-logs/
mkdir upload/$VERSION_NEU
mv latex-tuddesign_$VERSION_NEU.debian.tar.gz upload/$VERSION_NEU/
mv latex-tuddesign_$VERSION_NEU.dsc upload/$VERSION_NEU/
mv latex-tuddesign_"$VERSION_NEU"_all.deb upload/$VERSION_NEU/
mv latex-tuddesign_"$VERSION_NEU"_i386.changes upload/$VERSION_NEU/
mv latex-tuddesign_$VERSION_NEU.orig.tar.gz upload/$VERSION_NEU/