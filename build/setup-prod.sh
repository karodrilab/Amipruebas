# Get the private key from the environment variable
echo "Logging into Salesforce Org"
mkdir JWT
echo $SFDC_SERVER_KEY | base64 -d > JWT/server.key

echo "Authenticating org"
sfdx force:auth:logout --targetusername $SFDC_PROD_USER -p & sfdx force:auth:jwt:grant -i $SFDC_PROD_CLIENTID -f JWT/server.key -u $SFDC_PROD_USER -a DevHubProd
del JWT/server.key
