
# Root module: choose the resource group name based on the active Terraform workspace.
module "rg" {
  source = "./Terraform/modules/rg"
  # ressource_group_name    = var.resource_group_names[terraform.workspace]
  for_each                = toset(var.ressource_group_name)
  ressource_group_name    = each.value
  resource_group_location = var.resource_group_location
  # depends_on = [module.vnet] #explicitly define the dependency on the vnet module to ensure that the resource group is created after the virtual network is created.
}

# resource "azuread_user" "user" {
#   user_principal_name = "shreegagan2001@gmail.com"
#   display_name        = "Shreegagana Beluvigi"
#   mail_nickname       = "shreegagan2001"
#   password ="Shreegagna@2126"

# }

# resource "azuread_group" "group"{
#   display_name = "myazureadgroup"
#   # name = "myazureadgroup"
#   members = [azuread_user.user.object_id]
#   mail_enabled = false
# }

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

# resource "azurerm_policy_definition" "policy" {
#   name         = "my-policy"
#   policy_type  = "Custom"
#   mode         = "All"
#   display_name = "My Custom Policy"
#   description  = "This is a custom policy definition."

#   policy_rule = <<POLICY_RULE
# {
#   "if": {
#     "field": "location",
#     "notIn": ["eastus", "westus"]
#   },
#   "then": {
#     "effect": "deny"
#   }
# }
# POLICY_RULE
# }