# ./bin/bash

#Removing all installations
apt remove proftpd-*
echo "Proftpd has been removed"

#Removing all extra files
rm -r /etc/proftpd/
echo "PC is now clean from all installations"