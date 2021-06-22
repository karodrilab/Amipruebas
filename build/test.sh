sfdx force:auth:web:login -a $SFDC_PROD_USER -r https://test.salesforce.com/ -s
#sfdx force:source:push -u ${CIRCLE_BRANCH}
sfdx force:apex:test:run -l RunLocalTests -d --outputdir test-results --resultformat tap --targetusername ${CIRCLE_BRANCH}
