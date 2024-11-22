# Connect to Azure
Connect-AzAccount

# Variables
$resourceGroupName = "example-resources"
$location = "West Europe"
$storageAccountName = "examplestorageacct"
$skuName = "Standard_LRS"

# Create a resource group
New-AzResourceGroup -Name $resourceGroupName -Location $location

# Create a storage account
New-AzStorageAccount -ResourceGroupName $resourceGroupName `
                     -Name $storageAccountName `
                     -Location $location `
                     -SkuName $skuName `
                     -Kind StorageV2 `
                     -EnableHttpsTrafficOnly $true `
                     -MinimumTlsVersion "TLS1_2"

# Output the storage account name
Write-Output "Storage account '$storageAccountName' created in resource group '$resourceGroupName' at location '$location'."