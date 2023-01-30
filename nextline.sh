#!

# To help with quick navigation/amendments in text docs. 

windowid=$(xdotool getwindowfocus)

sleep 0.5 && xdotool windowactivate --sync $windowid

xdotool key Down
xdotool key Home
