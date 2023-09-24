#!/bin/bash

# Function to move files containing a specific string into a folder
move_files_with_string() {
    search_string="$1"
    folder_name="$2"
    mkdir -p "$folder_name"
    count=0  # Initialize a counter for the moved files
    for file in *; do
        if [[ -f "$file" && "$file" == *"$search_string"* ]]; then
            mv "$file" "$folder_name/"
            ((count++))  # Increment the counter
        fi
    done
    echo "Moved $count files containing '$search_string' into '$folder_name' folder."
}

# Specify the search string and folder name
search_string="example"  # Replace with your desired search string
folder_name="SpecificFiles"  # Replace with your desired folder name

# Call the function to move files
move_files_with_string "$search_string" "$folder_name"
