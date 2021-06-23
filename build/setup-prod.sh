#Get the private key from the environment variable
echo "Logging into Salesforce Org"
echo "Authenticating org"
#sfdx auth:jwt:grant --clientid 3MVG9Ccwq.TeycMai5QnOzXW5fUZzNLJyLbXgpcAlGHInayKphJPiC11LbCdYViBppKSSO5Ee3xOiLqRkBjEE --jwtkeyfile JWT/server.key --username consultor_force+amicar@nectia.com.sbxdodoria --instanceurl https://test.salesforce.com
#sfdx auth:jwt:grant --clientid $SFDC_DESA_CLIENTID --jwtkeyfile JWT/server.key --username $SFDC_DESA_USER --instanceurl https://test.salesforce.com
