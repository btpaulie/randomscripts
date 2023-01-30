#!/bin/bash

#Back up DCIM 

#Definitions

d=$(date +%Y-%m-%d)
t=$(date +%"T")i
file=$/run/user/1000/gvfs/smb-share:server=raspberrypi.local,share=pauldrive/Log/phonelog

#7z backup of DCIM folder

7z a /media/bt/Big\ Boi/phone_archive_$d.7z /run/user/1000/gvfs/mtp:host=SAMSUNG_SAMSUNG_Android_R5CTB0H1RDE/Internal\ storage/DCIM

echo "Backup complete. Logging action."

echo -e "plain \e[0;31mRED Backup complete. Logging to  \e[0m reset"

echo "Backup of device completed on $d at $t" >> $file
