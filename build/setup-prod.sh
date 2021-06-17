#Get the private key from the environment variable
echo "Setting up SANDBOX Connection..."
mkdir JWT
echo $SFDC_SERVER_KEY| base64 -d > JWT/server.key

# Authenticate to salesforce
echo "Authenticating..."
sfdx force:auth:logout --targetusername %USERNAME% -p sfdx force:auth:jwt:grant --clientid $SFDC_PROD_CLIENTID --jwtkeyfile JWT/server.key --username $SFDC_PROD_USER --setdefaultdevhubusername -a consultor_force+amicar@nectia.com.pruebasci