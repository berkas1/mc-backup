directory_new=`date +%Y-%m-%d`;
directory_source=/home/berkas1/ms  #source directory - the directory where is your server



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

create-directory;
backup-server;
