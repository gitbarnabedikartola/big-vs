#!/bin/bash

#read -p "Copy de URL  https://www.biglinux.com.br   and press Enter to continue..."

echo "start in 5 seconds"
sleep 5

echo "Start..."
while true : ; do
    tab=$[$tab + 1]
    echo "Tab $tab"
    sleep 1
    xdotool type www.biglinux.com.br
    xdotool key Return
    if [ "$tab" -gt "0" -a "$tab" -lt "10" ]; then
        sleep 5
#    elif [ "$tab" -lt "50" ]; then
#        sleep 0.5
#    elif [ "$tab" -lt "50" ]; then
#        sleep 1
#    elif [ "$tab" -lt "100" ]; then
#        sleep 2
#    elif [ "$tab" -lt "200" ]; then
#        sleep 3
#    elif [ "$tab" -lt "300" ]; then
#        sleep 4
    else
    	sleep 1
    fi
    xdotool key ctrl+t
done
