#!/bin/bash

mkdir -p ./docs

git submodule init

git submodule update --remote


cd ./templates/jbake-future-imperfect-template

# Base submodule to latest commit
git pull origin master

rm -rf content
echo "Copy content from root to template"
cp -R ../../content .

echo "Copy jbake.properties to current template"
cp ../../jbake.properties .

echo "Copy assets from root to template"
cp -Rf ../../assets .

jbake -b

rm -rf ../../docs/*

echo "Copy Output to docs"
cp -R output/* ../../docs/

echo "Copy CNAME"
cp ../../CNAME ../../docs/
