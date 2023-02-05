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
    # Extract the file name without the extension
    file_name="${file%.*}"
    # Extract the page number from the file name
    page_num=$(echo $file_name | grep -oE '[0-9][0-9]')
    # Add the page number as a heading to the output file
    echo "## Page $page_num" >> $output_file
    # Append the contents of the file to the output file
    cat $file >> $output_file
    # Add a newline between each file
    echo "" >> $output_file
done
