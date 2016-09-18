#!/bin/bash
VERSION=$1
SHA256=$2
BINARY_URL=$3
FILE=$4
sed -e "s/version.*/version \"$VERSION\"/" \
    -e "s_url.*_url \"$BINARY_URL\"_" \
    -e "s/sha256.*/sha256 \"$SHA256\"/" \
    $FILE > $FILE