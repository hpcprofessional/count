# count
A quick way to count cloud resources using bash
Source: https://github.com/hpcprofessional/count

## Usage

### Amazon AWS

1. Log into the AWS Console
2. Navigate to the [Tag Editor](https://console.aws.amazon.com/resource-groups/tag-editor/find-resources)
3. Depending on circumstances set the regions and/or resource types as appropriate. (Tip: 'All regions' and 'All supported resource types' if it captures your estate )
4. Note the relative position of the Type column. (Script assumes it's the fourth position)
5. Click "Export the CSV"
6. Move the downloaded file ("resources.csv") to this folder
7.  **TIP: You can join (concatenate) multiple AWS resource CSV's into a single file**
8. If necessary, edit count_aws.sh to adjust the FIELD variable (line 6?) to account for column placement
9. Run the count_aws.sh. It will print output wi th the count of each resource type found

Potential enhancement(s):
1. resources.csv can have varied header ordering. Adding code to account for this (via the FIELD variable) might be good to do someday.

### Microsoft Azure

1. Log in to Azure Portal
2. Select "All Resources"
3. Click "Export to CSV"
4. Move the downloaded file ("Azureresources.csv") to this folder
5.  **TIP: You can join (concatenate) multiple Azure resource CSV's into a single file**
6. Run the count_azure.sh script. It will print output with the count of each resource type found

Potential enhancement(s):
1. So far, no examples of Azureresources.csv has varied its separator. Adding code to account for this (via a new SEP variable) might be good to do someday.
1. So far, no examples of Azureresources.csv has varied in its headers. Adding code to account for this (via the FIELD variable) might be good to do someday.

### Google Cloud

1. install glcoud utility
2. Authenticate as appropriate ('gcloud auth login' perhaps?)
3. Run the script

Potential enhancements(s):
None expected at this time
