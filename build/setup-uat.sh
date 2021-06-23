#Get the private key from the environment variable
echo "Setting up SANDBOX Connection..."
#mkdir JWT
echo $SFDC_SERVER_KEY | base64 -d > JWT/server.key

# Authenticate to salesforce
echo "Authenticating uat..."
#sfdx force:auth:logout --targetusername $SFDC_PROD_USER -p 
sfdx force:auth:jwt:grant --clientid $SFDC_UAT_CLIENTID -u --username $SFDC_UAT_USER -f --jwtkeyfile $SFDC_SERVER_KEY.ENC --setdefaultdevhubusername -a DevhubQA
