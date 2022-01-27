New-AzKeyVault -VaultName 'AZ204-Vault'
    -ResourceGroupName 'rg-204'
    -Location 'East US'



#create key vault using az
az keyvault secret set --name 'myName'
    --vault-name 'vaultName'
    --description 'des'
    --value 'valueName'
    --subscription 'mySub'

#important
@Microsoft.KeyVault(VaultName=az204vault;SecretName=blobConnectionString;SecretVersion=fd342342)
@Microsoft.KeyVault(SecretUri=https://az204vault.vault.azure.net/secrets/blobConnectionString/fd342342)