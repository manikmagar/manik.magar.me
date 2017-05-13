#!/bin/bash

mkdir -p ./docs

rm -rf ./docs/*

jbake -b . ./docs

echo "Copy CNAME"
cp ./CNAME ./docs/
