#!

# Perform a ping sweep on my home network

read -p "Give me the first three octets of the network you want to scan:" iprefix

echo "Okay. Scanning."

nmap -sP $iprefix.1-254
