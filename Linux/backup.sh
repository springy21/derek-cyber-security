#!/bin/bash

#Create /var/backup if it doesn't exist
mkdir -p /var/backup

#Backup of Home Directory
tar cvf /var/backup/home.tar /home

#Move Backup File
mv /var/backup/home.tar /var/backup/home.10122021.tar

#List All Files in the backup
ls -lh /var/backup > /var/backup/file_report.txt

#Check Free Space on Hard Drive
free -h > /var/backup/disk_report.txt
