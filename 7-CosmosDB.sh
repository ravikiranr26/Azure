#create a sql api cosmos db account 
az cosmosdb create --name myDBName --resource-group rgName01

#create a sql database
az cosmosdb sql database create --account-name myDBName --name sampleDB

#create a sql database container
az cosmosdb sql container create --resource-group rgName01 
--account-name myDBName --database-name sampleDB
--name sampleContainer --partition-key-path "/employeeid"
