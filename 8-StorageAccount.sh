#create storage account
az storage account create 
--name myStorageAccount 
--resource-group myRg01
--location westeurope
--sku Standard_RAGRS
--kind StorageV2

#In powerShell its New-AzStorageAccount

#set access tiers 
az storage blob set-tier
--account-key 12345
--account-name myAccountName
--container-name images
--name thomas.jpg
--tier Cool

#copy a blob with Azure Cli
az storage blob copy start 
--source-account-name myStore1
--source-account-key 00001
--source-container images
--source-blob thom.jpg
--account-name myStore2
--account-key 00001
--destination-container pictures
--destination-blob thom.jpg

az storage blob copy start-batch
--source-account-name myStore1
--source-account-key 00001
--source-container images

--account-name myStore2
--account-key 00001
--destination-container pictures

#azcopy cmd utility, use /* to not copy the dir in source path
azcopy copy "source path" "target path"
--resursive=true

#Notes
Strong consistency: most recent writes
1h high pip /15 Std pip
changefeed and azure blob storage
Consistent prefix
Gremlin graph db
bounded stalness 
GRS
