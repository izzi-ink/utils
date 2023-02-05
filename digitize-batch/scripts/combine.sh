#!/bin/bash

# Set the path to the folder containing the markdown files
path="."

# Change to the markdown file directory
cd $path

# Initialize the output file
output_file="combined_pages.md"

# Remove the output file if it already exists
rm -f $output_file

# Loop through all markdown files in the directory
for file in *.md; do
    cat $file >> $output_file
done
