# Get the private key from the environment variable
echo "Logging into Salesforce Org"
mkdir JWT1
echo $SFDC_SERVER_KEY | base64 -d > JWT1/server.key
echo "Authenticating org"
sfdx force:auth:logout --targetusername $SFDC_UAT_USER -p & sfdx force:auth:jwt:grant -i $SFDC_UAT_CLIENTID -f JWT1/server.key -u $SFDC_UAT_USER -a DevHub
