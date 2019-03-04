# Experts Live USA 2019: Automating Security and Cloud governance at scale – notes from the field
## Speakers:
| Name | Twitter Handler | Comment
|:--- | :--- | :---
|**Alexandre Verkinderen**|[@AlexVerkinderen](https://twitter.com/alexverkinderen)| Microsoft MVP: Azure |
|**Tao Yang**|[@MrTaoYang](https://twitter.com/mrtaoyang)| Microsoft MVP: Cloud & Datacenter Management |

## Introduction
This repository contains artifacts used in the demo of Alex and Tao's Azure Governance session at Experts Live USA, March 2019.

## Demos
### Azure Blueprint
The sample blueprint used in this demo was developed by Tao and it is published at Alex Frankle's GitHub repo (Alex is a PM at the Azure Blueprint product team). You can find it [HERE](https://github.com/ajf214/personal-arm-templates/tree/master/Example%20Blueprints/managementSubConfig).

To import the blueprint into your Azure environment, you must use the PowerShell script ***Manage-AzureRMBlueprint.ps1***, which is located at the [PowerShell Gallery](https://www.powershellgallery.com/packages/Manage-AzureRMBlueprint).

### Azure Policy
The Azure Diagnostics Settings policies and initiative can be deployed via the ARM template located at Tao's GitHub repo: [https://github.com/tyconsulting/azurepolicy/tree/master/arm-templates/diagnostic-settings](https://github.com/tyconsulting/azurepolicy/tree/master/arm-templates/diagnostic-settings)

The **Restrict Public Storage Accounts Initiative** contains two (2) policies. Both of them can be found at Tao's GitHub repo:
* Restrict Public Storage Accounts: [https://github.com/tyconsulting/azurepolicy/tree/master/policy-definitions/restrict-public-storageAccount](https://github.com/tyconsulting/azurepolicy/tree/master/policy-definitions/restrict-public-storageAccount)
* Restrict Storage Accounts firewall rules: [https://github.com/tyconsulting/azurepolicy/tree/master/policy-definitions/restrict-storageAccount-firewall-rules](https://github.com/tyconsulting/azurepolicy/tree/master/policy-definitions/restrict-storageAccount-firewall-rules)

### Azure Resource Graph
The demo script for Azure Resource Graph is located in [this repo](../master/resourceGraph/DemoQuery.ps1).