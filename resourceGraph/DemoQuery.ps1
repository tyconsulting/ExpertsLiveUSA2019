##Initializing
## PowerShell:
#Sign-in
Add-AzAccount

#install Az.Graph module if necessary
#install-module az.resourcegraph -force

## Azure CLI
#Sign-in
az login
#enable resource-graph extension if necessary:
#az extension add --name resource-graph

## Sample: find all public facing storage accounts
#Sammple Query: "where type =~ 'microsoft.storage/storageAccounts' and aliases['Microsoft.Storage/storageAccounts/networkAcls.defaultAction'] == 'Allow'" 

## PowerShell:
Search-AzGraph -Query "where type =~ 'microsoft.storage/storageAccounts' and aliases['Microsoft.Storage/storageAccounts/networkAcls.defaultAction'] == 'Allow'" | Format-Table kind, Location, ManagedBy, Name, ResourceGroup, SubscriptionId, TenantId

## Azure CLI
az graph query -q "where type =~ 'microsoft.storage/storageAccounts' and aliases['Microsoft.Storage/storageAccounts/networkAcls.defaultAction'] == 'Allow'" --output table

## Sample: Windows server Hybrid Use Benefit
#PowerShell
$HUBQuery = "where type =~ 'microsoft.compute/virtualMachines' and aliases['Microsoft.Compute/imageOffer'] == 'WindowsServer' and aliases['Microsoft.Compute/licenseType'] == 'Windows_Server'"

$NoHUBQuery = "where type =~ 'microsoft.compute/virtualMachines' and aliases['Microsoft.Compute/imageOffer'] == 'WindowsServer' and aliases['Microsoft.Compute/licenseType'] != 'Windows_Server'"

Search-AzGraph -Query $HUBQuery | Format-Table kind, Location, ManagedBy, Name, ResourceGroup, SubscriptionId, TenantId

Search-AzGraph -Query $NoHUBQuery | Format-Table kind, Location, ManagedBy, Name, ResourceGroup, SubscriptionId, TenantId

#Azure CLI
az graph query -q $HUBQuery --output table

az graph query -q $NoHUBQuery --output table