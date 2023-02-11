#!/bin/bash
#echo "WRITE THE NAME OF THE FOLDER TO WHICH YOU WOULD LIKE TO MOVE OR COPY INFECTED FILES.\nPLEASE CHOOSE NAME THAT NOT EXIST."
#read DIRECTORYNAME
#if [ -d "$DIRECTORYNAME" ]; then
#  echo "$DIRECTORYNAME DOES EXIST."
#fi
rm -rf /home/user/VIRUSES
mkdir /home/user/VIRUSES
echo "CHOOSE THE PATH WHERE YOU WANT TO SCAN AND WHAT TO DO WITH INFECTED FILES:\n1-USER HOME CATALOG AND COPY INFECTED FILES\n2-USER HOME CATALOG AND MOVE INFECTED FILES\n3-CURRENT LOCATION AND COPY INFECTED FILES\n4-CURRENT LOCATION AND MOVE INFECTED FILES\n5-WRITE PATH AND COPY INFECTED FILES\n6-WRITE PATH AND MOVE INFECTED FILES"  
read number
sudo mkdir /var/log/clamav/
sudo chown -R clamav:clamav /var/log/clamav/
sudo /etc/init.d/clamav-freshclam stop
sudo freshclam
sudo /etc/init.d/clamav-freshclam start
if [ $number -eq "1" ];
then
  clamscan -r -i --copy=/home/user/VIRUSES --exclude-dir=VIRUSES --bell /home/user/
  exit
fi
if [ $number -eq "2" ];
then
  clamscan -r -i --move=/home/user/VIRUSES --exclude-dir=VIRUSES --bell /home/user/
  exit
fi
if [ $number -eq "3" ];
then
  clamscan -r -i --copy=/home/user/VIRUSES --exclude-dir=VIRUSES --bell .
  exit
fi
if [ $number -eq "4" ];
then
  clamscan -r -i --move=/home/user/VIRUSES --exclude-dir=VIRUSES --bell .
  exit
fi
if [ $number -eq "5" ];
then
  read mypath
  clamscan -r -i --copy=/home/user/VIRUSES --exclude-dir=VIRUSES --bell $mypath
  exit
fi
if [ $number -eq "6" ];
then
  read mypath
  clamscan -r -i --move=/home/user/VIRUSES --exclude-dir=VIRUSES --bell $mypath
  exit
fi
