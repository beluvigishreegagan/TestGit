provider "azurerm" {
  alias           = "sub_gagan"
  subscription_id = "085e0457-c5a2-4c4f-89db-0f8d8b4ede3c"
  tenant_id       = "f3e5c1d0-8b6e-4f7a-9c2e-1b2d3e4f5g6h"
  client_id     = "your-client-id"
  client_secret = "your-client-secret"
 features {}
}
# If you want to use multiple Azure subscriptions, you can define multiple provider blocks with different aliases. For example, you can define another provider block for a different subscription like this:

# provider "azurerm" {
#   alias           = "sub_gagan2"
#   subscription_id = "gwqfuyg"
#   tenant_id       = "hgyygeg1u"
#  features {}
# }


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
