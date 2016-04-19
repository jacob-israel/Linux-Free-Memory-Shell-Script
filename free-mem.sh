#!/bin/bash
# Jacob 28/Abril/2014

DATE="`date`"

LOGFILE=$HOME/myscripts/free-mem.sh.log

echo "============================ $DATE ==================================" >> $LOGFILE
echo "Your Server Free Memory Script" >> $LOGFILE
echo "Sync.." >> $LOGFILE
sync
echo "Free Drop Caches.." >> $LOGFILE
echo "3" > /proc/sys/vm/drop_caches
free -g >> $LOGFILE
