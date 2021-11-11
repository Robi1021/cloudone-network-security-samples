# main.tf

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.73.0"
    }
  }
}

# Harper Creds
provider "azurerm" {
  features {}
  subscription_id = "e0b488d0-e8ed-426d-bb22-5dcce490cca9"
  client_id       = "bf4ca2db-dc1c-485a-8f54-994d3c36ac27"
  client_secret   = "g927Q~N1.6N_t8FDKzQ99L8gvfBKGfYGcIiIB"
  tenant_id       = "3e04753a-ae5b-42d4-a86d-d6f05460f9e4"
}