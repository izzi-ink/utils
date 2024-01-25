# Badger Utils

## Digitize Batch

The first set of utilities, [digitize-batch](https://github.com/izzi-ink/utils/tree/main/digitize-batch) convert hand-written notes to markdown files, and then combine them into a single file. 
I use scanning apps, to scan my handwritten notes, and then use OCR sofrware to convert the scanned images to text files. The scripts in this collection are used to convert the text files to markdown files, and then combine them into a single file.

Feel free to use and improve. I will be happy to accept any pull requests.

## Organise Files

You can use a simple shell script to move files of the same type into a folder on macOS. This script will organize files in the current directory into folders based on their file type (e.g., all .txt files into a "Text" folder, all .jpg files into a "Images" folder, etc.).

Here's how the script works:

1. It defines a function called move_files that takes two parameters: the file type (e.g., "txt") and the folder name (e.g., "Text").
2. Within the function, it creates the target folder if it doesn't already exist using mkdir -p.
3. It uses find to search for files of the specified type in the current directory and its subdirectories.
4. It moves each found file into the target folder using mv.
5. The script calls the move_files function for each file type and folder name combination.
6. You can add more file types and folder names to the script as needed.
7. Finally, it displays a message indicating that the files have been organized.

To use the script, follow these steps:

1. Open a text editor and paste the script into a new document.
2. Save the document with a .sh extension (e.g., organize_files.sh).
3. Open the Terminal.
4. Navigate to the directory where you want to organize the files.
5. Make the script executable by running the following command:

```
chmod +x organize_files.sh
```
1. Run the script:

```
./organize_files.sh
```
The script will organize the files in the current directory based on the specified file types into their respective folders.

### Move and Count 

This is an extension of the current .sh and it adds a counter, to display how many files were moved.
