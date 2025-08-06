#!/bin/bash

shopt -s nullglob

html_files=(svg/*.html)
svg_files=(svg/*.svg)

if (( ${#html_files[@]} > 0 )); then
    for file in "${html_files[@]}"; do
        mv "$file" "${file%.html}.svg"
    done
elif (( ${#svg_files[@]} > 0 )); then
    for file in "${svg_files[@]}"; do
        mv "$file" "${file%.svg}.html"
    done
else
    echo "Aucun fichier à convertir."
    exit 1
fi

echo "Conversion complete."