#!/bin/bash

PARENT_DIR="." 
RECIPIENT='reggie.escobar94@gmail.com' 

find "$PARENT_DIR" -type f -name "*.md" -exec gpg --yes --batch --trust-model always --encrypt --recipient "$RECIPIENT" {} \;

