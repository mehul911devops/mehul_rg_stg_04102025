terraform {
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = "4.46.0"
    }
  }
  backend "azurerm" {
    resource_group_name = "myrg3"
    storage_account_name = "mtstg3"
    container_name = "mycontainer3"
    key = "terraform.tfstate"
    
  }
}