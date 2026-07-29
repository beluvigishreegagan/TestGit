# variable "ressource_group_name" {
#   description = "Name of the resource group"
#   type        = list(string)
# }

variable "resource_group_location" {
  description = "Location of the resource group"
  type        = string
}

# Each workspace maps to one resource group name in the current design.
variable "resource_group_names" {
  description = "Map of resource group names for each workspace"
  type        = map(string)
  default = {
    test = "test-myrg"
    dev  = "dev-myrg"
  }
}
