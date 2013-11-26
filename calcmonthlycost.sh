#!/bin/bash

CURRENTMONTH=`date +%m`
CURRENTYEAR=`date +%Y`
DATESEARCH="$CURRENTMONTH/[0-9][0-9]/$CURRENTYEAR"
count=0

for i in `cat /root/scripts/energydata.csv | grep "$DATESEARCH" | cut -d "," -f 6`;
do
   count=`echo $count + $i | bc`
done

count=`echo $count*100 | bc`

echo $count | bc
echo $count | bc
echo UPTIME
echo EnergyHub
