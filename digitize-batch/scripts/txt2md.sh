#!/bin/bash

# Set the path to the folder containing the text files
path="."

# Change to the text file directory
cd $path

# Loop through all text files in the directory
for file in *.txt; do
  # Get the file name without the extension
  file_name="${file%.*}"

  # Convert the file to Markdown
  pandoc "$file" -o "${file_name}.md"
done
