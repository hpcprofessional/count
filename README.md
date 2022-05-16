# count
A quick way to count cloud resources
Source: https://github.com/hpcprofessional/count

## Usage

### Azure

1. Log in to Azure Portal
2. Select "All Resources"
3. Click "Export to CSV"
4. Move the downloaded file ("Azureresources.csv") to this folder
5.  **TIP: You can join (concatenate) multiple Azure resource CSV's into a single file**
6. Run the count_azure.sh script. It will print output with the count of each resource type found

Potential enhancement(s):
1. So far, no examples of Azureresource.csv has varied in its headers. Adding code to account for this (via the FIELD variable) might be good to do someday.
