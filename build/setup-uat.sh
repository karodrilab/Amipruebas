#Get the private key from the environment variable
echo "Setting up SANDBOX Connection..."
#mkdir JWT
echo $SFDC_SERVER_KEY | base64 -d > JWT/server.key

# Authenticate to salesforce
echo "Authenticating uat..."
#sfdx force:auth:logout --targetusername $SFDC_PROD_USER -p 
sfdx force:auth:jwt:grant --clientid $SFDC_PROD_CLIENTID -u --username $SFDC_PROD_USER -f --jwtkeyfile $SFDC_SERVER_KEY --setdefaultdevhubusername -a DevhubQA
