#!/bin/bash
VERSION_NEU=1.0.20141024
VERSION_ALT=1.0.20140920

cd latex-tuddesign-$VERSION_NEU/
debuild
cd ..
mv latex-tuddesign_"$VERSION_NEU"_i386.build build-logs/
mv latex-tuddesign_$VERSION_NEU.debian.tar.gz upload/
mv latex-tuddesign_$VERSION_NEU.dsc upload/
mv latex-tuddesign_"$VERSION_NEU"_all.deb upload/
mv latex-tuddesign_"$VERSION_NEU"_i386.changes upload/
mv latex-tuddesign_$VERSION_NEU.orig.tar.gz upload/