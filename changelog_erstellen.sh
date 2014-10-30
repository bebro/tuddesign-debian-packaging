#!/bin/bash
VERSION_NEU=1.0.20141024
VERSION_ALT=1.0.20140920

#Überprüfung notwendig, ob Tags existieren!

rm -R github-repo/debian

cd github-repo
#git fetch
git checkout -b debian-packaging_$VERSION_NEU $VERSION_NEU
cp -R ../debian/ ./debian/
git dch --since $VERSION_ALT -N $VERSION_NEU --ignore-branch
git checkout master
git branch -d debian-packaging_$VERSION_NEU

# Changelog wurde angepasst, überprüfen:
nano debian/changelog
cp debian/changelog ../changelog.neu


cd ..