#!/usr/bin/env bash

# Task 08: this script is intentionally buggy.
# Usage: ./scripts/batch-copy.sh DEST FILE...

#引号是shell语法符号，只在当前这一行生效，不会存入变量值里面。
destination="$1"
shift

mkdir -p "$destination"

for file in "$@"
do
    cp "$file" "$destination"
done
