# Child module: create one Azure resource group from the name passed by the root module.

resource "azurerm_resource_group" "rg" {
  name     = var.ressource_group_name
  location = var.resource_group_location
  tags = {
    costcentre = "vsstudio"
  }
}