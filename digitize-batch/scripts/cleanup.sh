#!/bin/bash

# Set the path to the folder containing the text files
path="."

# Change to the text file directory
cd $path

# Create the RAW folder if it doesn't exist
mkdir -p RAW

# Move all the text files to the RAW folder
mv *.txt RAW/
