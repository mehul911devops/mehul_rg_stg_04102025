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

provider "azurerm" {
    features {}
    subscription_id = "1a747295-ba1d-4caf-b64b-855098eb49d6"
  
}