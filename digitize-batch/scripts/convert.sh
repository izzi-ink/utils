#!/bin/bash

# Set the path to the folder containing the text files
path="/path/to/text/files"

# Change to the text file directory
cd $path

# Counter variable
counter=1

# Loop through all text files in the directory
for file in *.txt; do
  # Rename the file with the format "page_#.txt"
  mv "$file" "page_$counter.txt"

  # Convert the file to Markdown
  pandoc "page_$counter.txt" -o "page_$counter.md"

  # Increment the counter
  ((counter++))
done
