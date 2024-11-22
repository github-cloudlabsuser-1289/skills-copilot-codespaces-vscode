# Define the provider
provider "azurerm" {
  features {}
}

# Define the resource group
resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "West Europe"
}

# Define the storage account
resource "azurerm_storage_account" "example" {
  name                     = "examplestorageacct"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  # Optional: Define additional properties
  enable_https_traffic_only = true
  min_tls_version           = "TLS1_2"
}

# Output the storage account name
output "storage_account_name" {
  value = azurerm_storage_account.example.name
}