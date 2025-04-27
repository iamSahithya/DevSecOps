#!/bin/bash

source_dir=$1
dest_dir=$2

find "$source_dir" type -f size +1G | while read -r file; do
echo "Moving $file"
mv "$file" "$dest_dir"
done
