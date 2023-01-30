#!

# Automating git setup bullshit

echo "Run this from the directory your program files are in."
echo " "

read -p "URL for your repo? Just the <username>/<repo>. No github.com/ :" giturl

git remote set-url origin git@github.com:$giturl

git add --all

git commit -am "Changes made."

git push -u origin master
