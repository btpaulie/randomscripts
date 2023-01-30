#!/bin/bash

#watgram = fl oz multiplied by ~28
#water_floz = user inputted water in fluid ounces
# stren = strength, in plain english
# ratio_choice = variable that stores user's choice of strength

#Clear terminal
clear

#Introduction
echo 'Welcome. A quick note: the ratios here describe WATER to COFFEE GROUNDS, or: '$(echo -e '\033[33m<water>:<coffee>\033[0m')' Now lets get brewing.'
echo " "

#Determine how much coffee, in fl oz, user wants to make
read -p 'How much coffee do you want, in fluid ounces?' water_floz

#Convert the fl oz to grams
watgram=$(bc <<< "scale=2; $water_floz*28.57")
echo " "

#Verbosely doing math, for now
echo "Got it. $water_floz oz. is approximately $watgram grams of water."

#Get desired strength (water:coffee ratio) from user
echo " "
echo "How strong do you want your coffee?"
echo "---------------------------------------------"
echo -e "\033[1m1)\033[0m Strong (15:1 ratio)"
echo -e "\033[1m2)\033[0m Medium (17:1 ratio)"
echo -e "\033[1m3)\033[0m Weak (18:1 ratio)"
echo "---------------------------------------------"
read -p 'Enter choice number.' ratio_choice
echo " "

#Set the ratio variable based on user's choice
if [ $ratio_choice == 1 ]; then
ratio=0.066
elif [ $ratio_choice == 2 ]; then
ratio=0.058
else
ratio=0.055
fi

#Multiply the amount of water in grams by the ratio set by the user
coffeegram=$(bc <<< "scale=1; $watgram*$ratio")

#Tell the people what they wanna hear
echo 'So, you should use '$(echo -e '\033[33m'$(printf "%.1f" $coffeegram)' grams\033[0m')' of coffee grounds for your '$water_floz' ounce cup.'

