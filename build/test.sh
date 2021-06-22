#sfdx force:auth:web:login -a $SFDC_PROD_USER -r https://test.salesforce.com/ -s
#sfdx force:source:push -u ${CIRCLE_BRANCH}
sfdx force:apex:test:run -t "AMICAR_ChecklistGetJSONTest" -c -r human -u $SFDC_PROD_USER
