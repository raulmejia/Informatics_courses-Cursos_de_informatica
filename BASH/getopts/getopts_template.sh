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
                        outdir=$OPTARG
                        ;;
                p)
                        MYSQL_PASS=$OPTARG
                        ;;
                d)
                        BACKUP_DIR=$OPTARG
                        ;;
                \?)
                        echo "ERROR: Invalid option: -$OPTARG" >&2
                        exit 2;;
                :)
                       echo "ERROR: Option -$OPTARG requires an argument" >&2
                       exit 2;;
        esac
done
shift $((OPTIND-1))
echo "\n-i Your infile (padded vcf) ='$infile'  \n-o Your output directory ='$outdir'  MYSQL_PASS='$MYSQL_PASS'  BACKUP_DIR='$BACKUP_DIR' Additionals: $@ \n"

if [ -z "$infile" ]; then
    echo "ERROR: the parameter i = path to your output file option was NOT given. Usage: Orchester.sh -i yourinputfile(paddedvcf)  -o(outdir)" >&2
    exit 2;
fi

if [ -z "$outdir" ]; then
    echo "ERROR: Missing parameter -o  (outdir). Usage: Orchester.sh -i yourinputfile(paddedvcf)  -o(outdir)" >&2
    exit 2;
fi

########################
## The script begins ###
########################
