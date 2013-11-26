mrtg-energyhub v0.1
==============

Poll your EnergyHub.com account and graph the electrical usage data via MRTG.

This is a work in progress.  No guarantees that it won't burn your house down if you try to run it.

INSTALL
=======

Prerequisites

* Energy Hub account on energyhub.com
* Energyhub device registered to your account
* A cookies downloading plugin for your desktop web browser
* A linux system of some sort with MRTG installed
  - The scripts posted here work currently run on my Raspberry Pi
* A little bit of Linux command line experience would help


Extract the energyhub-0.1.tar.gz file using the following:
-note - if you extract the files under another directory besides /root, you will need to update all
        of the scripts to reflect the correct path.

su -
cd /root
tar -zxvf energyhub-0.1.tar.gz
chmod +x energyhub/*.sh

Scripts/files included:
energyhub/getenergydata.sh - used to collect energy usage data from energyhub.com.  Requires a cookies.txt file.

Calc scripts below calculate various energy usage items.
energyhub/calccurrent.sh
energyhub/calcmonthlycost.sh
energyhub/calcmonthly.sh
energyhub/calcdaily.sh

Configuration entries for CRONTAB and MRTG.CONF
energyhub/cron-entry.txt
energyhub/mrtg-energy.cfg


Use the cron-entry.txt data and make a new crontab entry.  This is required to gather the energy csv file
from energyhub.com.

Use the mrtg-energy.cfg data in your /etc/mrtg.cfg file to execute the getenergydata.sh script

That's it.
Good luck.
