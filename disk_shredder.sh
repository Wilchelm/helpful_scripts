#!/bin/bash
sudo fdisk -l | grep "dev/sd"
read -p 'Enter disk like /dev/sdX: ' disk
echo
sudo shred -v -n1 -z $disk
