#!/bin/bash

# Set the path to the folder containing the markdown files
path="."

# Change to the markdown file directory
cd $path

# Get the last file name with the format "page-##.md"
last_file=`ls -1 | grep -E 'page-[0-9][0-9].md' | tail -1`

# Extract the last number from the last file name
last_num=$(echo $last_file | grep -oE '[0-9][0-9]')

# If there are no files with the format "page-##.md"
if [ -z "$last_num" ]; then
  # start the counter at 1
  counter=1
else
  # start the counter at the last number + 1
  counter=$((last_num + 1))
fi

# Loop through all markdown files in the directory
for file in *.md; do
  # Skip the files that already have the format "page-##.md"
  if [[ $file =~ page-[0-9][0-9].md ]]; then
    continue
  fi
  # Rename the file with the format "page-##.md"
  mv "$file" "page-$(printf %02d $counter).md"
  ((counter++))
done
