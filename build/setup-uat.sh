# Get the private key from the environment variable
echo "Logging into Salesforce OrgUAT"
dir
echo "hola"
#mkdir JWT
echo $SFDC_SERVER_KEY | base64 -d > JWT/server.key
echo "Authenticating orgUAT"
sfdx force:auth:logout --targetusername $SFDC_PROD_USER -p & sfdx force:auth:jwt:grant -i $SFDC_PROD_CLIENTID -f JWT/server.key -u $SFDC_PROD_USER -a DevHubUAT
