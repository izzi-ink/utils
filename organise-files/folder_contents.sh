#!/bin/bash

# Set the default directory to the current directory
directory=${1:-.}

# Check if the provided path is a directory
if [ ! -d "$directory" ]; then
    echo "The provided path is not a directory."
    exit 1
fi

# Set the output file name (you can change .txt to .md for markdown)
output_file="folder_contents.txt"

# Use the tree command to list directory contents
# If tree is not available, it will fall back to using ls
if command -v tree &> /dev/null; then
    tree "$directory" > "$output_file"
else
    ls -R "$directory" > "$output_file"
fi

echo "Folder contents have been saved to $output_file"

