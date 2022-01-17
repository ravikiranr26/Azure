#We can deploy ARM Templates using the Portal, Azure CLI, or Powershell

New-AzResourceGroupDeployment `
    -Name mydeployment -ResourceGroupName 'rkdemo-rg' `
    -TemplateFile './template/template.json' `
    -TemplateParameterFile './template/parameters.json'