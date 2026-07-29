provider "azurerm" {
  features {
    # subscription_id = "your-subscription-id"
    # tenant_id       = "your-tenant-id"
  }
}
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
  backend "azurerm" {
  }
}
