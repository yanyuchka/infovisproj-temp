#!/bin/sh

# a shell script used to download NYPD Motor Vehicle Collisions Data: 
# https://data.cityofnewyork.us/Public-Safety/NYPD-Motor-Vehicle-Collisions/h9gi-nx95
# forked from http://alvinalexander.com/linux-unix/wget-command-shell-script-example-download-url
# this should be executed from a crontab entry for keeping data uptodate 
# or use URL link below to obtain current data shapshot


# full path for correct cron job
DIR='/home/yanyuchka/repos/Charts-for-CompStat/rawdata'

# wget output file
FILE=crashdata.csv

# wget log file
LOGFILE=wget.log

# wget download url
URL=https://data.cityofnewyork.us/api/views/h9gi-nx95/rows.csv?accessType=DOWNLOAD

cd $DIR
wget $URL -O $FILE -o $LOGFILE 


