terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.85.0"
    }
  }
}

provider "azurerm" {
    features {
      
    }
}

module "ResourceGroup" {
    source = "./ResourceGroup"
    base_name = "terraform1"
    lc = "west us"
} 

module "storageAccount" {
    source = "./Storageaccount"
    base_name = "terraform1"
    resource_group_name = module.ResourceGroup.rg-output
    lc = "west us"
  
}

