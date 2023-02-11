#!/bin/bash
sudo mkdir /var/log/clamav/
sudo chown -R clamav:clamav /var/log/clamav/
sudo /etc/init.d/clamav-freshclam stop
sudo freshclam
sudo /etc/init.d/clamav-freshclam start
