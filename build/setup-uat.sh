# Get the private key from the environment variable
echo "Logging into Salesforce OrgUAT"
echo dir
echo "hola"
mkdir JWT
echo dir
echo $SFDC_SERVER_KEY | base64 -d > JWT/server.key
echo "Authenticating orgUAT"
sfdx force:auth:logout --targetusername $SFDC_UAT_USER -p & sfdx force:auth:jwt:grant -i $SFDC_UAT_CLIENTID -f JWT/server.key -u $SFDC_UAT_USER -a DevHubUAT
