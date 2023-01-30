#!

# Prefix every line in the document with a character, according to user input.

# ask user for file to prefix

echo "This script will add a given character to the beginning of each line in a text file."

read -p "What file would you like to edit?" file

echo  "Editing $file. Pick a character to prepend each line with."

read -p "Character:" char

echo "Adding $char to $file."

clear

awk '{print "'$char'" $0}' $file

echo "Done."




