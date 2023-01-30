#!

#! /usr/bin/bash

# Convert a markdown document to PDF
# Uses Pandoc, LaTeX

echo "${bold}Paul's Markdown to PDF script"

read -p "Enter the path of the .md file (WITHOUT THE FILE EXTENSION) you want to convert" md

pandoc -s -o $md.pdf $md.md

#Progress bar
for((i=0;i<=100;i+=6)); do
    printf "%-*s" $((i+1)) '[' | tr ' ' '#'
    printf "%*s%3d%%\r"  $((100-i))  "]" "$i"
    sleep 0.1
done; echo

echo "$md.pdf has been created."
