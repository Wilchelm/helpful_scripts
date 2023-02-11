#!/bin/bash
echo "Choose number:\n1-TURN ON BLUETOOTH\n2-TURN OFF BLUETOOTH\n3-TURN ON AND CONNECT TO DEVICE"
read number
if [ $number -eq "1" ];
then
  sudo systemctl start bluetooth.service
  rfkill unblock bluetooth
  #sudo /etc/init.d/bluetooth start
  exit
fi
if [ $number -eq "2" ];
then
  sudo systemctl stop bluetooth.service
  rfkill block bluetooth
  #sudo /etc/init.d/bluetooth stop
  exit
fi
if [ $number -eq "3" ];
then
  firstbluetoothdevicemacadress="" # <- write bluetooth mac adress here
  firstbluetoothdevicename="" # <- write bluetooth device name
  secondbluetoothdevicemacadress="" # <- write bluetooth mac adress here
  secondbluetoothdevicename="" # <- write bluetooth device name
  thirdbluetoothdevicemacadress="" # <- write bluetooth mac adress here
  thirdbluetoothdevicename="" # <- write bluetooth device name
  #write more devices
  echo "Choose number:"
  echo "1-"$firstbluetoothdevicename
  echo "2-"$secondbluetoothdevicename
  echo "3-"$thirdbluetoothdevicename
  #add more
  read numbertwo  
  if [ $numbertwo -eq "1" ];
  then
    sudo systemctl start bluetooth.service
    rfkill unblock bluetooth
    sleep 2
    #sudo /etc/init.d/bluetooth start
    echo "power on\nconnect "$firstbluetoothdevicemacadress | bluetoothctl
    sleep 2
    #sometimes need second time to connect
    echo "power on\nconnect "$firstbluetoothdevicemacadress | bluetoothctl
    sleep 2
    exit
  fi
  if [ $numbertwo -eq "2" ];
  then
    sudo systemctl start bluetooth.service
    rfkill unblock bluetooth
    sleep 2
    #sudo /etc/init.d/bluetooth start
    echo "power on\nconnect "$secondbluetoothdevicemacadress | bluetoothctl
    sleep 2
    #sometimes need second time to connect
    echo "power on\nconnect "$secondbluetoothdevicemacadress | bluetoothctl
    sleep 2
    exit
  fi
  if [ $numbertwo -eq "3" ];
  then
    sudo systemctl start bluetooth.service
    rfkill unblock bluetooth
    sleep 2
    #sudo /etc/init.d/bluetooth start
    echo "power on\nconnect "$secondbluetoothdevicemacadress | bluetoothctl
    sleep 2
    #sometimes need second time to connect
    echo "power on\nconnect "$secondbluetoothdevicemacadress | bluetoothctl
    sleep 2
    exit
  fi
  #more
fi
