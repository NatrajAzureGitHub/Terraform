terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.8.0"
    }
  }
}

provider "azurerm" {
  subscription_id = "xxxxxxxxxxxxxxx"
  client_id       = "xxxxxxxxxxxxxxx"
  client_secret   = "xxxxxxxxxxxxxxx"
  tenant_id       = "xxxxxxxxxxxxxxx"
  features {}
 
}

