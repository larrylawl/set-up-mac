#!/bin/bash
# This script creates hard links from ./DotFiles to home directory

dir=$(pwd)
DotDir=$dir/DotFiles
rgx="\.[A-Za-z0-9]" # ignore '.' and '..'

for file in $(ls -a $DotDir); do
    if [[ $file =~ $rgx ]]; then
        echo "Creating hard links for $file"
        ln $DotDir/$file ~/$file
    fi
done
