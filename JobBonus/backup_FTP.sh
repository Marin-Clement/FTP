# ./bin/bash
echot "put destination"
read Destination

d=$(date +%Y-%m-%d-%H-%M)

tar -czvf Proftpd_backup_$d.tar.gz  /etc/proftpd
tar -czvf FTPshare_backup_$d.tar.gz  /ftpshare

ftp -in -u ftp://$Destination pr Proftpd_backup_$d.tar.gz \
ftp -in -u ftp://$Destination pr FTPshare_backup_$d.tar.gz

rm Proftpd_backup_$d.tar.gz ; rm FTPshare_backup_$d.tar.gz
