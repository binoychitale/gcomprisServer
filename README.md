# gcomprisServer
This project is essentially a suite of scripts to install and configure the GCompris Educational Program on Linux to run using database and configuration files served from a local Samba server.

The setup will be in two parts :
1) Server Setup
2) Client Setup

# 1) Server Setup
  In order to set up a samba server, download the project and run this command in the download directory(If you are downloading the file from a browser, it will likely be in the /home/\<user\>/Downloads folder.) :-
###  sh serversetup.sh

# 2) Client setup
  In order to setup the client machine, download the project and run this command in the download directory(If you are downloading the file from a browser, it will likely be in the /home/\<user\>/Downloads folder.) :-
###  sh clientsetup.sh  \<ip-address-of-server\>
  [You can find the ip address of the server by going to the terminal and typing "ifconfig". A string of the form 192.168.x.x is what you're looking for]

# Running GCompris
  In order to run Gcompris on the client machine, type the command :
### gcomprisremote

# Running GCompris as admin
  In order to run Gcompris as admin, type the command :
### gcadmin
