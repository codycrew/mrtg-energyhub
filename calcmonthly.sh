#!/bin/bash

CURRENTMONTH=`date +%m`
CURRENTYEAR=`date +%Y`
DATESEARCH="$CURRENTMONTH/*/$CURRENTYEAR"
count=0

for i in `cat /root/energyhub/energydata.csv | grep $DATESEARCH | cut -d "," -f 5`;
do
   count=`echo $count + $i | bc`
done

echo $count | bc
echo $count | bc
echo UPTIME
echo EnergyHub
