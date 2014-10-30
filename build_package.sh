#!/bin/bash
VERSION_NEU=1.0.20141024
VERSION_ALT=1.0.20140920

cd latex-tuddesign-$VERSION_NEU/
debuild
cd ..
mv latex-tuddesign_"$VERSION_NEU"_i386.build build-logs/latex-tuddesign_$VERSION_NEU_i386.build
mv latex-tuddesign_$VERSION_NEU.debian.tar.gz hochzuladen/
mv latex-tuddesign_$VERSION_NEU.dsc hochzuladen/
mv latex-tuddesign_"$VERSION_NEU"_all.deb hochzuladen/
mv latex-tuddesign_"$VERSION_NEU"_i386.changes hochzuladen/
mv latex-tuddesign_$VERSION_NEU.orig.tar.gz hochzuladen/