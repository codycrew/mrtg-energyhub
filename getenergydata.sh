#!/bin/bash

echo Getenergydata execution `date` >> /root/scripts/getenergydata.sh.log

cd /root/scripts

wget --load-cookies cookies.txt "https://myhub.energyhub.net/EDX/rest/yourHome/downloadCsv?readingType=PT15M&wholeHome=true&appliances=false&cost=true"

mv download* energydata-full.csv
tail -3200 energydata-full.csv > energydata.csv

cd -
