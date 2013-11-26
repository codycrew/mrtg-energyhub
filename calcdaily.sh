#!/bin/bash

CURRENTMONTH=`date +%m/%d/%Y`
TIMESTAMP=`date +%m-%d-%Y-%H%M`
kWhcount=0

#tail -100 /root/energyhub/energydata.csv | grep "$CURRENTMONTH" | cut -d "," -f 5 > $TIMESTAMP-dailyscript-cut
#tail -100 /root/energyhub/energydata.csv | grep "$CURRENTMONTH" > $TIMESTAMP-dailyscript

for i in `tail -100 /root/energyhub/energydata.csv | grep "$CURRENTMONTH" | cut -d "," -f 5`;
do
   kWhcount=`echo $kWhcount + $i | bc`
done

echo $kWhcount | bc
echo $kWhcount | bc
echo UPTIME
echo EnergyHub
