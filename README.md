# count
A quick way to count cloud resources using bash
Source: https://github.com/hpcprofessional/count

## Usage

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
