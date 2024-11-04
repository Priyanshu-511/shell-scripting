#!/bin/bash

query="$1"

if [ $((query % 2)) -eq 0 ]; then
    echo "even"
    exit 0
fi

echo "odd"