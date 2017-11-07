#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: easy_read.sh <file>"
    exit 1
fi

filename=$1

if [ ! -f $filename ]; then
    echo "$filename does not exist."
    exit 2
fi

grep -v "#" $filename | grep -v "^$"
