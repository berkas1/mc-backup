#DO NOT USE THIS SCRIPT, IT IS NOT WORKING YET - FOR NOW JUST USE THE "simple.backup.sh"

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
