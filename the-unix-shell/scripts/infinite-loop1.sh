#!/bin/bash
while true                            # Forever...
do
    echo "My Process ID (PID) is $$"  # Show the current process id
    echo "And now we are at" `date`   # Show the time and date
    echo "Press [CTRL+C] to stop"     # Show some help
    echo "Press [CTRL+Z] to pause"    # Show more help            
    echo "---------------------------------------------------------"
    sleep 1                           # Sleep 1 second
done
