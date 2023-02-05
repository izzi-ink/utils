#!/bin/bash

# Set the path to the folder containing the text files
path="."

# Change to the text file directory
cd $path

# Counter variable
counter=1

# Loop through all markdown files in the directory
for file in *.md; do
  # Rename the file with the format "page-01.md"
  mv "$file" "page-$(printf %02d $counter).md"
  ((counter++))
done
