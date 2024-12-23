#!/bin/bash

# Search for all files with extensions .safetensors and .pt
find ./collections -type f \( -name "*.safetensors" -o -name "*.pt" \) ! -path "*/@Recycle/*" ! -path "*/ControlNet/*" ! -path "*/VAE-approx/*" | while read -r file; do
    dir=$(dirname "$file")         # Get the directory of the file
    base=$(basename "$file")       # Get the filename
    name="${base%.*}"              # Remove the extension to get the prefix

    # Check if a PNG with the same name exists
    if [ -f "$dir/$name.png" ]; then
        # Check if the existing PNG file size is 0
        if [ ! -s "$dir/$name.png" ]; then
            echo "Found $dir/$name.png with size 0. Removing it."
            rm "$dir/$name.png"
        else
            # echo "$dir/$name.png exists and is non-empty."
            continue
        fi
    fi

    # Search for the first PNG with the same name prefix
    png=$(find "$dir" -type f -name "$name*.png" | head -n 1)

    if [ -n "$png" ]; then
        # Copy the found PNG to the same name as the .safetensors or .pt file
        cp "$png" "$dir/$name.png"
        echo "Copied $png to $dir/$name.png"
    else
        echo "No PNG found with prefix $name in $dir"
    fi
done
