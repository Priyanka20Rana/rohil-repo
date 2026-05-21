terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.73.0"
    }
  }
  backend "azurerm" {
  resource_group_name  = "yaml-rg"
 storage_account_name = "tfstatecentral12345"
  container_name       = "tfstate"
  key                  = "prod.terraform.tfstate"
  }
}

provider "azurerm" {
features{}
}