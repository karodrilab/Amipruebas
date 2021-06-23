#Get the private key from the environment variable
echo "Logging into Salesforce Org"
echo "Authenticating org"
# DODORIA 
#echo "Conectar DODORIA"
#sfdx auth:jwt:grant --clientid 3MVG9Ccwq.TeycMai5QnOzXW5fUZzNLJyLbXgpcAlGHInayKphJPiC11LbCdYViBppKSSO5Ee3xOiLqRkBjEE --jwtkeyfile JWT/server.key --username consultor_force+amicar@nectia.com.sbxdodoria --instanceurl https://test.salesforce.com
#sfdx auth:jwt:grant --clientid $SFDC_DESA_CLIENTID --jwtkeyfile JWT/server.key --username $SFDC_DESA_USER --instanceurl https://test.salesforce.com
#PRUEBACI
echo "Conectar PruebasCi"
#sfdx auth:jwt:grant --clientid 3MVG9eQyYZ1h89HcPBQTxIzUhVbC9BLVh_W8x4VdZ4xjNT0A5xTjv0aKXIy4k0bTvv.QUNRcA5Ug0DjlROf4w --jwtkeyfile JWT/server.key --username consultor_force+amicar@nectia.com.pruebasci --instanceurl https://test.salesforce.com
sfdx auth:jwt:grant --clientid $SFDC_UAT_CLIENTID --jwtkeyfile JWT/server.key --username $SFDC_UAT_USER --instanceurl https://test.salesforce.com
