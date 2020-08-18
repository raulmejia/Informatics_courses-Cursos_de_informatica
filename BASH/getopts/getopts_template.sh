#!/bin/bash

### For the options given by the user 
OPTIND=1 # Reset if getopts used previously

# Check if there is any argument given
if [ -z "$1" ]
  then
    echo "No argument supplied, usage is ..."
fi

while getopts ":h:u:p:d:" opt; do
        case "$opt" in

                h)
                        MYSQL_HOST=$OPTARG
                        ;;
                u)
                        MYSQL_USER=$OPTARG
                        ;;
                p)
                        MYSQL_PASS=$OPTARG
                        ;;
                d)
                        BACKUP_DIR=$OPTARG
                        ;;
                \?)
                        echo "Invalid option: -$OPTARG" >&2
                        exit 2;;
                :)
                       echo "Option -$OPTARG requires an argument" >&2
                       exit 2;;
        esac
done
shift $((OPTIND-1))
echo "MYSQL_HOST='$MYSQL_HOST'  MYSQL_USER='$MYSQL_USER'  MYSQL_PASS='$MYSQL_PASS'  BACKUP_DIR='$BACKUP_DIR' Additionals: $@"

# Check fot missing and requiered arguments
if [ -z "$MYSQL_HOST" ]; then
    echo "option a was NOT given, exit. Usage: ---- " >&2
    exit 2;
fi


