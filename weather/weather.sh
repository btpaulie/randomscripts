#!

# My Weather Report.

clear

echo "Here's the weather you care about."

echo
echo "Your home weather"
echo "-----------------"
curl wttr.in/Fanwood?format=3


echo
echo "Weather around NJ:"
echo "------------------"

curl wttr.in/{Mountain_Creek_New_Jersey,Ocean_City_New_Jersey,Kinnelon}?format=3

echo
echo "The weather in New England"
echo "--------------------------"

curl wttr.in/{Newport,Burlington,Lake_Placid,Portland_Maine}?format=3

echo
echo "The weather by Tom (Arizona)"
echo "----------------------------"

curl wttr.in/Snowflake?format=3

echo
echo "The weather by Dave (Tennessee)"
echo "-------------------------------"

curl wttr.in/Nashville?format=3

echo
echo "The weather by Dean (North Carolina)"
echo "------------------------------------"

curl wttr.in/Raleigh?format=3

echo
echo "The weather by Matt (Florida)"
echo "-----------------------------"
curl wttr.in/Fort_Pierce?format=3

echo
echo "That concludes your weather report. Now, kindly go fuck yourself."




