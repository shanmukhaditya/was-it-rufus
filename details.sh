#!/bin/bash

if [ -z "$1" ]; then
    echo "Please provide directory address"
    exit 1
fi

if [ ! -d "$1" ]; then
    echo "Please provide valid directory address"
    exit 1
fi

cd "$1"

branch=$(git branch --show-current)
echo active branch: $branch

if git diff-index --quiet HEAD --; then
    echo "local changes: False"
else
    echo "local changes: True"
fi

commits=$(git log --since="1 week ago" --pretty=format:"%H" | awk 'END {print NR}')
if [ $commits -gt 0 ]; then
    echo "recent commit: True"
else
    echo "recent commit: False"
fi

author=$(git log -1 --pretty=format:"%an")
rufus="Rufus"
if [ "$author" == "$rufus" ]; then
    echo "blame Rufus: True"
else
    echo "blame Rufus: False"
fi