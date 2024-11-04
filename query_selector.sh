#!/bin/bash

query="$1"
shift

for element in "$@"; do
    if [ "$element" = "$query" ]; then
        echo "YES"
        exit 0
    fi
done

echo "NO"
