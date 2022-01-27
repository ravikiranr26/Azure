az eventhubs namespace create --resource-group "myRG01"
--location "westus2" --name "myNS" --sku "Standard"

az eventhubs eventhub create --name "myEventHub"
--namespace "myNS" --message-retention 3 --partition-count 4 -g "myGroupName"
