#!/bin/bash

sudo apt-get update
sudo apt-get upgrade
sudo apt-get install gcompris
sudo apt-get install smbclient
sudo smbclient //${1}/gcserverconfig -U $USER --no-pass
mkdir ${HOME}/Desktop/remoteserver
sudo mount -t cifs //${1}/gcserverconfig ${HOME}/Desktop/remoteserver -o username=$USER guest
