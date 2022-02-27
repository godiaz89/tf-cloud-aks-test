terraform {
  cloud {
    organization = "tfgonza"
    hostname = "app.terraform.io"
    workspaces {
      tags = ["gonsite"]
    }
    
  }
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "2.98.0"
    }
  }
}

provider "azurerm" {
  # Configuration options
  features {
    
  }
#   skip_provider_registration = false
}