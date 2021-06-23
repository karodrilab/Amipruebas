#Convert to MDAPI format for deployment to prod
echo "Converting to MDAPI format..."
sfdx force:org:list
mkdir packageRoles
sfdx force:mdapi:retrieve -r packageRoles -u my-hub-orgPruebasCI -k packageRoles.xml
sfdx force:mdapi:retrieve:report
#sfdx force:mdapi:deploy -c -f packageRoles.zip -u my-hub-Dodoria -w 10

#r: donde se guardara el archivo.
#-k listado de componentes 
#-c Valida
#-f donde se encuentra el zip

#sfdx force: mdapi:convert -d deploy_prod -r mdapipackage /
#sfdx force:source:convert -d deploy_prod -r src
#Deploy to prod & run all tests
#echo "Deploying to Desa & running all tests..."
#sfdx force:mdapi:deploy -u consultor_force+amicar@nectia.com.pruebasci -d deploy_prod/ -w -1 -l RunAllTestsInOrg
#sfdx force:source:deploy -x C:/Users/karen/Documents/GitHub/amicarci/src/main/default/package.xml -g
