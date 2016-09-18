#!/bin/bash
VERSION=$1
SHA256=$2
FILE=$3
sed -e "s/version.*/version \"$VERSION\"/" \
    -e "s_url.*_url \"https://github.com/ottogiron/ferrariworker/releases/download/$VERSION/ferrariworker.darwin-amd64.tar.gz\"_" \
    -e "s/sha256.*/sha256 \"$SHA256\"/" \
    $FILE