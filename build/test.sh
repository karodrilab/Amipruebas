sfdx force:auth:web:login -a $SFDC_UAT_USER -r https://test.salesforce.com/ -s
#sfdx force:source:push -u ${CIRCLE_BRANCH}
sfdx force:org:list
sfdx force:apex:test:run -n "AMICAR_ChecklistGetJSONTest" -r human -u $SFDC_UAT_USER

