#!/bin/bash
#############
# Purporse: #
#############
# This script receives a padded multivcf and retrieves the selected vcf(s) from it.


#######################################
### For the options given by the user #
#######################################
OPTIND=1 # Reset if getopts used previously

if [ -z "$1" ]
  then
    echo "No argument supplied, usage is ..."
fi

while getopts ":i:o:p:d:" opt; do
        case "$opt" in

                i)
                        infile=$OPTARG
                        ;;
                o)
                        outfile=$OPTARG
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
echo "Your infile (padded vcf) ='$infile'  Your out put file ='$outfile'  MYSQL_PASS='$MYSQL_PASS'  BACKUP_DIR='$BACKUP_DIR' Additionals: $@"

if [ -z "$infile" ]; then
    echo "o = path to your out put file option a was NOT given, exit. Usage: Orchester.sh -i yourinputfile(pappedvcf)  -o path_to_your_output_file" >&2
    exit 2;
fi

if [ -z "$outfile" ]; then
    echo "o = path to your out put file option a was NOT given, exit. Usage: Orchester.sh -i yourinputfile(pappedvcf)  -o path_to_your_output_file" >&2
    exit 2;
fi



### For the options given by the user 

########################
## The script begins ###
########################
