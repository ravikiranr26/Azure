#1 Create VM:

#login interactively and set a subscription to be the current active subscription
az login
az account set --subscription "Demo Account"

#Lets create a Window VM
az group list --output table

#Create a resource group if needed 
az group create \
    --name "rkdemo-rg" \
    --location "centralus"

#Create a Windows Virutal Machine
az vm create \
    --resource-group "rkdemo-rg" \
    --name "rkdemo-win-cli" \
    --image "win2019datacenter" \
    --admin-username "demoadmin" \
    --admin-password "password123+*&$"

#Open RDP for remote access, it may already be open
az vm open-port \
    --resource-group "rkdemo-rg" \
    --name "rkdemo-win-cli" \
    --port "3389"

#Get the IP Address for Remote Access
az vm list-ip-addresses \
    --resource-group "rkdemo-rg" \
    --name "rkdemo-win-cli" \
    --output table

#Create a Linux Virtual Machine
az vm create \
    --resource-group "rkdemo-rg" \
    --name "rkdemo-linux-cli" \
    --image "UbuntuLTS" \
    --admin-username "demoadmin" \
    --authentication-type "ssh" \
    --ssh-key-value ~/.ssh/id_rsa.pub

#OpenSSH for remote access, it may already be open
az vm open-port \
    --resource-group "rkdemo-rg" \
    --name "rkdemo-linux-cli" \
    --port "22"

#Get Ip Address for Remote Access
az vm list-ip-addresses \
    --resource-group "rkdemo-rg" \
    --name "rkdemo-linux-cli" \
    --output table

#Log into the Linux VM over ssh
ssh demoadmin@COPY_PUBLIC_IP_HERE

#Clean up the resources in this demo for the next demo
az group delete --name "rkdemo-rg"