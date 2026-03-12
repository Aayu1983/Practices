terraform {
  required_version = ">= 1.5.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "storage-rg-name"      
    storage_account_name = "yourstorageaccount"   
    container_name       = "tfstate"             
    key                  = "prod.terraform.tfstate"
  }
}

provider "azurerm" {
  subscription_id = var.main_subscription_id
  features {}
}
provider "azurerm" {
  alias           = "storage_sub"
  subscription_id = var.storage_subscription_id
  features {}
}
