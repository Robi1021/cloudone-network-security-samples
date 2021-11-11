# main.tf

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.73.0"
    }
  }
}

# Azure Creds
provider "azurerm" {
  features {}
  subscription_id = "sub_id"
  client_id       = "client_id"
  client_secret   = "client_secret"
  tenant_id       = "tenant_id"
}
