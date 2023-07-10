terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.8.0"
    }
  }
}

provider "azurerm" {
  subscription_id = "12922c22-a343-4b5b-ad36-c2deac151c9b"
  client_id       = "c42028fa-4e1e-4d5c-be3a-8ffefa26444f"
  client_secret   = "Oww8Q~IqcVITLryCH6TglM_3g~p2uGQguXx0QcFV"
  tenant_id       = "d05e5b60-84cd-45d8-9c6f-1363a05dbcdd"
  features {}
 
}

