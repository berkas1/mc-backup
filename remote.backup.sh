#!/bin/sh

#editable section
ftp_host=mlocal;
ftp_user=f;
ftp_pass=f;
ftp_backup_source=;
ftp_backup_dest=;

#end of editable section

#make a connection to remote ftp server
ftp -in $ftp_host;


#log into ftp server
user $ftp_user $ftp_pass;


#get desired files and save them in your local computer
get $ftp_backup_source $ftp_backup_dest;


#end ftp connection
bye;


if [ $? -eq 0]; then
	echo "Backup completed successfully";
	exit 1;
else
	echo "Backup has not been completed successfully, please try again";
	exit 1;



