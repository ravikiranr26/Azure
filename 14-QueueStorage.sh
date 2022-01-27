#create the queue
az storage queue create --name myQueue
#delete the queue
az storage queue delete --name myQueue
#view message in a queue (without affecting visibility)
az storage message peek --queue-name myQueue
#delete all message in queue
az storage message clear --queue-name myQueue