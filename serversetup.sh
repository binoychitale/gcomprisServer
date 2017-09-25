#!/bin/bash

sudo apt-get update
sudo apt-get upgrade
sudo apt-get install samba
sudo apt-get install gcompris
mkdir ${HOME}/Desktop/gcserverconfig
#back up original samba config file
mkdir ${HOME}/gcbackups/
sudo chmod -R 777 /etc/samba/smb.conf
sudo cp /etc/samba/smb.conf ${HOME}/gcbackups/
sudo echo "[gcserverconfig]
path = ${HOME}/gcserverconfig
browseable = yes
read only = no
guest ok = yes" >> /etc/samba/smb.conf
sudo service smbd restart
