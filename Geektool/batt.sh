#!/bin/bash

ioreg -n AppleSmartBattery -r | awk '$1~/Capacity/{c[$1]=$3} END{OFMT="%.2f%%"; max=c["\"MaxCapacity\""]; print (max>0? 100*c["\"CurrentCapacity\""]/max: "?")}' > /Volumes/ramdisk/bat 

sleep 1

echo $(cat /Volumes/ramdisk/bat) | awk '{printf("%d\n",$1 + 0.5)}' > /Volumes/ramdisk/bat2
