#!/bin/sh

#editable section
ftp_host=
ftp_user=
ftp_pass=
ftp_backup_source=
ftp_backup_dest=
disable_ping=0

#end of editable section


#make sure that ftp server is online and responding

if [ $disable_ping -eq 1 ];then
	echo "Continuing without ping"
else
	ping -c 2 $ftp_host > /dev/null
	if [ $? -eq 0 ];then
		echo "FTP server responding, making backup..."
	else
		echo "server not responding, exiting..."
		exit 0
	fi
fi


#make a connection to remote ftp server
wget -rq   ftp://$ftp_user:$ftp_pass'@'$ftp_host/$ftp_backup_source --reject lck







if [ $? -eq 0]; then
	echo "Backup completed successfully";
	exit 1;
else
	echo "Backup has not been completed successfully, please try again";
	exit 1;



