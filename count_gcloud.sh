#!/bin/bash
#Home: https://github.com/hpcprofessional/count

#Security best practice
if [[ whoami == 'root' ]]; then
  echo "This should not be run as root."
  exit 1
fi

PROJECTS=$(gcloud projects list | grep -v PROJECT_ID | cut -d ' ' -f 1)

for PROJECT in $PROJECTS
do
  >&2 echo "Getting info for the project: $PROJECT"
  gcloud asset search-all-resources --scope=projects/"$PROJECT" --format='csv(assetType)'  
done | sort | uniq -c
