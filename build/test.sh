sfdx force:auth:web:login -a $SFDC_PROD_USER -r https://test.salesforce.com/ -s
sfdx force:source:push -u ${CIRCLE_BRANCH}
sfdx force:apex:test:run -t "AMICAR_ChecklistGetJSONTest" -d C:\Users\Equipo\Documents\The Welkin Suite\Projects\AmicarPruebaCI\AmicarPruebaCI\build\test-result -r human