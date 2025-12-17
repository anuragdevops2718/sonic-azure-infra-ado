terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=4.50.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "devteam"
    storage_account_name = "devstorage1211"
    container_name       = "devcontainer"
    key                  = "development.tfstate"
  } 
}
provider "azurerm" {
  features {}
  
}



