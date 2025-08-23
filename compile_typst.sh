#!/bin/bash
set -e

# Default output folder
output_folder="."

# Loop through all arguments
for file in "$@"; do
    # Check if the argument is a file
    if [ -f "$file" ]; then
        # Get the filename without extension
        filename=$(basename -- "$file")
        filename_no_ext="${filename%.*}"
        
        # Compile the Typst file
        typst compile "$file" "$output_folder/$filename_no_ext.pdf"
    fi
done
