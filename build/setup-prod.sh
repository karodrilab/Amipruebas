echo "Logging into Salesforce Org"
mkdir JWT
echo $SFDC_SERVER_KEY | base64 -di > JWT/server.key

echo "Authenticating org"
sfdx force:auth:jwt:grant --clientid $SFDC_PROD_CLIENTID --jwtkeyfile JWT/server.key --username $SFDC_PROD_USER --setdefaultdevhubusername -a DevHub