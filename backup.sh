directory=`date +%Y-%m-%d`;




function create-directory {
if [ -d "$directory" ]; then

        echo "backup already exists!";
        exit 0
else
        mkdir $directory;
        cp -r /home/berkas1/ms $directory/;
        echo "mc was backed up";
fi

}



create-directory;
