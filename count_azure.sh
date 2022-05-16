#!/bin/bash
#The purpose of this file is to parse the output of Microsoft Azure All resources "Export to CSV" function
# - It should be in the same directory as this script
#
#If you have multiple accounts, you can merge them all into a single CSV. 
# - This script should do the right them for duplicated headers, SEP lines, etc.

FILENAME='Azureresources.csv'

FIELD=2 #Default column for use with cut; We may double check this in the future.

#Security best practice
if [[ whoami == 'root' ]]; then
  echo "This should not be run as root."
  exit 1
fi

if [[ ! -f ./"$FILENAME" ]]; then
  echo "This script expects a file called $FILENAME to be in the current directory"
  exit 2 
fi

while read -r LINE
do
      #Look for (and skip) SEP lines
      if echo "$LINE" | grep 'SEP=,' > /dev/null 2>&1 ;
      then
       continue
      #Look for (and skip for now) Header lines
      elif echo "$LINE" | grep ',TYPE,' > /dev/null 2>&1 ;
      then
        FIELD=2 #TODO: Parse the input line to make TYPE didn't move around
        continue
      else 
      #Print out the resource type for sorting and uniq'ing
        echo "$LINE" | cut -d ',' -f $FIELD
      fi

done < "$FILENAME" | sort | uniq -c