#!/bin/bash

mkdir -p ./docs

git submodule init

git submodule update --remote


cd ./templates/jbake-future-imperfect-template

# Base submodule to latest commit
git pull origin master

rm -rf content
echo "Copy content from root to template"
pwd
cp -R ../../content .

echo "Copy jbake.properties to current template"
cp ../../jbake.properties .

jbake -b

rm -rf ../../docs/*

cp -R output/* ../../docs/
