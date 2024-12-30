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
move_files "JPG" "Images"
move_files "jpg" "Images"
move_files "jpeg" "Images"
move_files "png" "Images"
move_files "PNG" "Images"
move_files "PDF" "PDFs"
move_files "pdf" "PDFs"
move_files "epub" "Books"
move_files "EPUB" "Books"
move_files "mp4" "Video"
move_files "HEIC" "Images"
move_files "MP4" "Video"
move_files "html" "Code"
move_files "csv" "Data"
move_files "json" "Data"
move_files "xlsx" "Spreadsheets"
move_files "zip" "Zip Files"
move_files "wav" "Audio"
move_files "mp3" "Audio"
move_files "avif" "Images"
move_files "svg" "SVGs"
move_files "mov" "Video"
move_files "m4a" "Video"
move_files "pptx" "Presentations"
move_files "webp" "Images"
move_files "map" "Fantasy Maps"
move_files "numbers" "Spreadsheets"

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
