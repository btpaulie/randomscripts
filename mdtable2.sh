#Inserts a 3x3 table for MD editors like ObsidianMD. Set as a keyboard shortcut in Ubuntu settings.

windowid=$(xdotool getwindowfocus)

sleep 0.5 && xdotool windowactivate --sync $windowid type '|---|---|---|'
xdotool key Return

sleep 0.5 && xdotool windowactivate --sync $windowid type '|---|---|---|'
xdotool key Return

sleep 0.5 && xdotool windowactivate --sync $windowid type '|---|---|---|'



