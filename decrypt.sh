#!/bin/bash

PARENT_DIR="."

find "$PARENT_DIR" -type f -name "*.md.gpg" -exec sh -c 'gpg --yes --batch --decrypt --output "${1%.gpg}" "$1"' _ {} \;

