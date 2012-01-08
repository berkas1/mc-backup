#DO NOT USE THIS SCRIPT, IT IS NOT WORKING YET - FOR NOW JUST USE THE "simple.backup.sh"

#!/bin/bash
datet=`date +%Y-%m-%d`;
director="`date +%Y-%m-%d`-*";
directory_source=/home/berkas1/ms;  #source directory - the directory where is your server
directory_last=`ls -1 | find 2012-01-07-* | tail -1`;


function find-directory {
if [ -d "$datet-*" ];then
	echo "exist";
	#next-function
else 
	mkdir $datet"-1";
	echo "Directory was created successfuly!";
	backup-server;
	exit 0;
fi
}

function create-next-directory {



}


function create-directory {
if [ -d "$directory_new" ]; then #check if directory already exist or not

        echo "Backup already exists!";
        exit 0
else
        mkdir $directory_new;
        echo "Directory was created successfuly!";
fi
}

function backup-server {
cp -r $directory_source $directory_new/;
echo "Your minecraft server was backed up successfuly";
#copy the server folder to target location

}

#create-directory;
#backup-server;

#create-directory-once;
#echo $director
#echo $datet

#ls | grep $director

#echo $directory_last;
#mkdir $datet"-1";
