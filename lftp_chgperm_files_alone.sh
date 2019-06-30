#!/bin/bash

#usage
function usage {
	echo "USAGE: For MAN page use -m [help command]"
	echo "$0 -u Username -p 'Password' -h Host -f path_to_remotefile.txt"
}

while getopts ":u:p:h:d:f:m" opt; do
	case "$opt" in
		u )
			FTPNAME=$OPTARG
			;;
		p )
			FTPPASS=$OPTARG
			;;
		h) 
			HOST=$OPTARG
			;;
		f)
			REMOTE_FILE=$OPTARG
			;;
		m | *)
		 	usage
		 	exit
		 	;;
		?)
                        echo "I don't know what $OPTARG is !!!"
                        usage
                        exit 1
			;;
	esac
done
#Passing Arguments

# Creating lftp_runner
echo "
set net:timeout 10
set ssl:verify-certificate false
set ftp:ssl-allow no
set ftp:passive-mode true
set ftp:list-options -a

open $HOST
user $FTPNAME \"$FTPPASS\"" > lftp_runner.txt

cat "$REMOTE_FILE" 2> /dev/null | while read line
do
echo "chmod 644 ${line}" >> lftp_runner.txt
done
# Executing lftp runner

lftp -f lftp_runner.txt
echo "Remote File Permission has been changed, Successfully!"
