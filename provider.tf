provider "azurerm" {
  # Credentials are sourced from ARM_* environment variables in CI/local shell.
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
