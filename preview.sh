#!/bin/bash

# Search for all files with extensions .safetensors and .pt
find ./collections -type f \( -name "*.safetensors" -o -name "*.pt" \) | while read -r file; do
    dir=$(dirname "$file")         # Get the directory of the file
    base=$(basename "$file")       # Get the filename
    name="${base%.*}"              # Remove the extension to get the prefix

    # Check if a PNG with the same name already exists
    if [ ! -f "$dir/$name.png" ]; then
        # Search for the first PNG with the same name prefix
        png=$(find "$dir" -type f -name "$name*.png" | head -n 1)

        if [ -n "$png" ]; then
            # Copy the found PNG to the same name as the .safetensors or .pt file
            # cp "$png" "$dir/$name.png"
            echo "Copied $png to $dir/$name.png"
        else
            echo "No PNG found with prefix $name in $dir"
        fi
    else
        echo "$dir/$name.png already exists"
    fi
done
