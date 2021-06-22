# Get the private key from the environment variable
echo "Logging into Salesforce Org"
#mkdir JWT
echo $SFDC_SERVER_KEY | base64 -d > JWT/server.key
echo "Authenticating org"
sfdx force:auth:logout --targetusername %USERNAME% -p sfdx force:auth:jwt:grant --clientid $SFDC_UAT_CLIENTID --jwtkeyfile JWT/server.key --username $SFDC_UAT_USER --setdefaultdevhubusername -a DevHub
