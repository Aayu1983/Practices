terraform {
  required_version = ">= 1.5.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "myrg"      
    storage_account_name = "mydemostg"   
    container_name       = "mycontainer"             
    key                  = "rg.terraform.tfstate"
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
