resource "azurerm_resource_group" "rggroup" {
    name = "myrg1"
    location = "eastus"
  
}

resource "azurerm_storage_account" "mystorageaccount" {
    depends_on = [ azurerm_resource_group.rggroup ]
    name = "mystorage"
    location = "eastus"
    resource_group_name = "myrg1"
    account_tier = "Standard"
    account_replication_type = "LRS"
    
  
}
