sfdx force:auth:web:login -a $SFDC_PROD_USER -r https://test.salesforce.com/ -s
#sfdx force:source:push -u ${CIRCLE_BRANCH}
sfdx force:apex:test:run -l RunLocalTests -d C:\Users\karen\Documents\GitHub\Amipruebas\Log test-results -r human -u $SFDC_PROD_USER
