
# Root module: choose the resource group name based on the active Terraform workspace.
module "rg" {
  source                  = "./Terraform/modules/rg"
  ressource_group_name    = var.resource_group_names[terraform.workspace]
  resource_group_location = var.resource_group_location
}

# Import an already-existing Azure VNet into Terraform state manually.
# terraform import azurerm_virtual_network.vnet '/subscriptions/085e0457-c5a2-4c4f-89db-0f8d8b4ede3c/resourceGroups/myrg/providers/Microsoft.Network/virtualNetworks/myvnet'
# resource "azurerm_virtual_network" "vnet" {
#   # (resource arguments)
# }

# Alternative import workflow: generate configuration from an import block.
# terraform plan -generate-config-out="vnet.tf"
# import {
#   id = "/subscriptions/085e0457-c5a2-4c4f-89db-0f8d8b4ede3c/resourceGroups/myrg/providers/Microsoft.Network/virtualNetworks/myvnet"
#   to = azurerm_virtual_network.vnet
# }