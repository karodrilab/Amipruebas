#Get the private key from the environment variable
echo "Logging into Salesforce Org"
mkdir JWT
echo $SFDC_SERVER_KEY | base64 -d > JWT/server.key
echo "Authenticating org"
#sfdx force:auth:jwt:grant --clientid $SFDC_PROD_CLIENTID --jwtkeyfile server.key --username $SFDC_PROD_USER --setdefaultdevhubusername
#sfdx force: auth: logout --targetusername $SFDC_UAT_USER -p sfdx force:auth:jwt:grant --clientid $SFDC_UAT_CLIENTID --jwtkeyfile JWT/server.key --username $SFDC_UAT_USER
sfdx auth:jwt:grant --clientid $SFDC_DESA_CLIENTID --jwtkeyfile JWT/server.key --username $SFDC_DESA_USER --instanceurl https://amicar--sbxdodoria.my.salesforce.com
