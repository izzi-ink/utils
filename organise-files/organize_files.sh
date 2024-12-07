#!/bin/bash

# Create a function to move files of a specific type into a folder
move_files() {
    file_type="$1"
    folder_name="$2"
    mkdir -p "$folder_name"
    echo "Moving .$file_type files to $folder_name:"
    find . -maxdepth 1 -type f -name "*.$file_type" -print -exec mv {} "$folder_name" \; | while read file; do
        echo " - Moved: $file"
    done
}

# Specify file types and folder names
move_files "txt" "Text"
move_files "JPG" "JPGs"
move_files "jpg" "JPGs"
move_files "jpeg" "JPGs"
move_files "png" "PNGs"
move_files "PNG" "PNGs"
move_files "PDF" "PDFs"
move_files "pdf" "PDFs"
move_files "epub" "EPubs"
move_files "EPUB" "Epubs"
move_files "mp4" "mp4"
move_files "HEIC" "HEIC"
move_files "MP4" "MP4s"
move_files "html" "html"
move_files "csv" "data"
move_files "json" "data"
move_files "xlsx" "data"
move_files "zip" "zip"
move_files "wav" "audio"
move_files "mp3" "audio"
move_files "avif" "avif"
move_files "svg" "SVGs"

# Function to move files containing a specific string into a folder
move_files_with_string() {
    search_string="$1"
    folder_name="$2"
    mkdir -p "$folder_name"
    echo "Moving files containing '$search_string' to $folder_name:"
    for file in *; do
        if [[ -f "$file" && "$file" == *"$search_string"* ]]; then
            mv "$file" "$folder_name/"
            echo " - Moved: $file"
        fi
    done
}

# Specify the search string and folder name
search_string="(z-lib.org)"  # Replace with your desired search string
folder_name="Books"  # Replace with your desired folder name

# Call the function to move files
move_files_with_string "$search_string" "$folder_name"

echo "Files containing '$search_string' moved into '$folder_name' folder!"
echo "Files organized into folders!"
