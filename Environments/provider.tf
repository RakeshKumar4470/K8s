terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.12.0"
    }
  }
    backend "azurerm" {
    resource_group_name  = "dev-todo-rg-westus"  
    storage_account_name = "azuresaproter"                      
    container_name       = "dev"                      
    key                  = "Micro.terraform.tfstate"       
  }
}

provider "azurerm" {
  features {}
  subscription_id = "89a1b37c-85de-43fd-972b-3ad629ca01a1"
}