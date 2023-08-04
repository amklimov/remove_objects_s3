#!/usr/bin/env bash

if [[ -z $1 ]]
then
        read -p '!!ATTENTION - make sure that you enter the name of the list for deletion correctly! Enter the name of the list to delete and press Enter:' spisok
else
        spisok=$1
fi

BACKET="Your_Backet"
LOG="${NAME}-$(date +%F).log"

echo -e "$BACKET\n" > $LOG
readarray Myarray < $spisok

for value in ${Myarray[@]}
do
        s3cmd rm "s3://$BACKET/$value"  1>> $LOG  2>/dev/null
done
