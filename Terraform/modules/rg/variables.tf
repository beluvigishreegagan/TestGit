# Resource group name selected by the root module.
variable "ressource_group_name" {
  description = "Name of the resource group"
  type        = string
}

# Azure region shared by the resource group module.
variable "resource_group_location" {
  description = "Location of the resource group"
  type        = string
}