#Better version of script - this vs has been developed with ability to take more than one backup per day
#You can simple use a scheduled job - cron to backup your server in periodic time
#HOW TO USE THIS SCRIPT:
#1. Simply place this file to the target directory (where the backups will be stored) 
#3. Edit the "directory_source" variable
#2. Run the script (./backup.sh) or define it as a scheduled cron job
#HOW IT WORKS
#Script creates backup directories with variable name by pattern "year-month-day-numberofbackup"
#!/bin/bash
datet=`date +%Y-%m-%d`;
directory_source=/home/berkas1/ms;  #source directory - the directory where is your server
last_backup=`ls | grep "$director" | tail -1`;


function find-directory {
if [ -d "$datet-1" ];then
	echo "Backup already exist, creating new one.";
	#next-function
else 
	mkdir $datet"-1";
	echo "Directory was created successfuly!";
	backup-server;
	exit 0;
fi
}

function find-next-directory {
lastbp="${last_backup##*-}";
newbackup="$lastbp";
newbackup=$(($newbackup + 1));
create-next-directory;
}

function create-next-directory {
newdir=$datet"-"$newbackup;
mkdir $newdir;
}

function backup-server-next {
cp -r $directory_source $newdir/; 
echo "Your server was successfuly backed up into $newdir directory"
}

function backup-server {
cp -r $directory_source $datet"-1"/;
echo "Your minecraft server was backed up successfuly";
#copy the server folder to target location

}
find-directory
find-next-directory
backup-server-next
