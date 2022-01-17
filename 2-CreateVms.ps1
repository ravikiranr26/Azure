#Lets login, may launch a browser to authenticate the session
Connect-AzAccount -SubscriptionName 'Demo Account'

# Ensure you're pointed at your correct subscription
Set-AzContext -SubscriptionName 'Demo Account'

#Create a Resource Group
New-AzResourceGroup -Name "rkdemo-rg" -Location "CentralUS"

#Create a credential to use in the VM creation
$username = 'demoadmin'
$password = ConvertTo-SecureString 'password123+*%$' -AsPlainText -Force
$WindowsCred = New-Object System.Management.Automation.PSCredential ($username, $password)

#Create a Windows Virtual Machine, can be used for both Windows & Linux
New-AzVM `
    -ResourceGroupName 'rkdemo-rg' `
    -Name 'rkdemo-win-az' `
    -Image 'Win2019DataCenter' `
    -Credential $WindowsCred `
    -OpenPorts 3389

#Get the Public IP Address
Get-AzPublicIpAddress `
    -ResourceGroupName 'rkdemo-rg' `
    -Name 'rkdemo-win-az' | Select-Object IpAddress

#Cleanup after this demo
Remove-AzResourceGroup -Name 'rkdemo-rg'
