#configure web server logging to the filesystem
az webapp log config --name myName
--resource-group sampleRG
--web-server-logging filesystem

#configure app logging to the azure blob storage (win only)
az webapp log config --name myName
--resource-group sampleRG
--application-logging azureBlobStorage


#configure app logging to the file system (linux only)
az webapp log config --name myName
--resource-group sampleRG
--docker-container-logging filesystem

#tail logs from App service app
az webapp log tail --name sampleApp
--resource-group sampleRG

#tail and filter logs from App service app
az webapp log tail --name sampleApp
--resource-group sampleRG --filter Error

#Docker env
WEBSITES_CONTAINER_START_TIME_LIMIT = 10
