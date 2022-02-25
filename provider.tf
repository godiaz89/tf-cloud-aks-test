terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "2.98.0"
    }
  }
}

provider "azurerm" {
  # Configuration options
  client_secret = var.client_secret
  client_id = var.client_id
  subscription_id = var.subscription_id
  tenant_id = var.tenant_id
}