#!/bin/bash

sudo apt-get update
sudo apt-get upgrade
sudo apt-get install gcompris
sudo apt-get install smbclient
mkdir ${HOME}/Desktop/remoteserver
sudo mount -t cifs //$1/gcserverconfig/ ${HOME}/Desktop/remoteserver -o username=$USER
echo "alias gcomprisremote='gcompris --database /home/pi/Desktop/remoteserver/gcompris_sqlite.db --config-dir ${HOME}/Desktop/remoteserver/ --profile=TESTPROF'
alias gcadmin='gcompris --administration --database /home/pi/Desktop/remoteserver/gcompris_sqlite.db'" > ${HOME}/.bash_aliases
. ~/.bashrc
