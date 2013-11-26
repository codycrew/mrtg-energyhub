#!/bin/bash

INTERVAL=`tail -1 /root/energyhub/energydata.csv | cut -d "," -f 5` 

echo "$INTERVAL*4000" | bc
echo "$INTERVAL*4000" | bc
echo UPTIME
echo EnergyHub
