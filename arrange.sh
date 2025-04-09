#!/bin/bash

INPUT_DIR="files"

for file in "$INPUT_DIR"/*.txt; do
    if [[ -f "$file" ]]; then
        first_char=$(basename "$file" | cut -c1)
        lower_char=$(echo "$first_char" | tr '[:upper:]' '[:lower:]')
        upper_char=$(echo "$first_char" | tr '[:lower:]' '[:upper:]')

        if [[ -d "$lower_char" ]]; then
            mv "$file" "$lower_char/"
        elif [[ -d "$upper_char" ]]; then
            mv "$file" "$upper_char/"
        fi
    fi
done

