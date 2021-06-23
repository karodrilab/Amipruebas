# Get the private key from the environment variable
#echo "Logging into Salesforce Org"
#mkdir JWT
#echo $SFDC_SERVER_KEY | base64 -d > JWT/server.key
#echo "Authenticating org"
#sfdx force:auth:jwt:grant --clientid $SFDC_PROD_CLIENTID --jwtkeyfile server.key --username $SFDC_PROD_USER --setdefaultdevhubusername
#sfdx force: auth: logout --targetusername %USERNAME% -p sfdx force:auth:jwt:grant --clientid $SFDC_PROD_CLIENTID --jwtkeyfile JWT/server.key --username $SFDC_PROD_USER --setdefaultdevhubusername -a DevHub
#Create a scratch org
echo "Creating the Scratch Org..."
sfdx force:org:create -f . config/project-scratch-def.json --setalias Amipruebas --durationd days 30 --targetdevhubusername $SFDC_PROD_USER
#sfdx force:org:create -f project-scratch-def.json -a Amipruebas
#Push the code to your new scratch org & run all tests
echo "Pushing code to Scratch Org..."
sfdx force:org:list
sfdx force:source:push -u UAT
echo "Running all tests on Scratch Org..."
sfdx force:apex:test:run --testlevel RunLocalTests --outputdir test-results --resultformat tap --targetusername $SFDC_PROD_USER

# Get the private key from the environment variable
echo "Logging into Salesforce Org"
#mkdir JWT
echo $SFDC_SERVER_KEY | base64 -d > JWT/server.key
echo "Authenticating org"
#sfdx force:auth:jwt:grant --clientid $SFDC_PROD_CLIENTID --jwtkeyfile server.key --username $SFDC_PROD_USER --setdefaultdevhubusername
#sfdx force:auth:logout --targetusername $SFDC_PROD_USER -p 
sfdx force:auth:jwt:grant --clientid $SFDC_PROD_CLIENTID --jwtkeyfile JWT/server.key --username $SFDC_PROD_USER --setdefaultdevhubusername -a DevHub



