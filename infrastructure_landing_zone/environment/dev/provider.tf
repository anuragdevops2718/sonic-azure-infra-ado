terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=4.50.0"
    }
  }
  required_version = ">=1.0.0"
  backend "azurerm" {
    resource_group_name  = "devteam"
    storage_account_name = "devstorage1211"
    container_name       = "devcontainer"
    key                  = "development.tfstate"
  } 
}
provider "azurerm" {
  features {}
  subscription_id = "f419aad2-16c1-4f60-8dab-3e7e42bbec41"
}



