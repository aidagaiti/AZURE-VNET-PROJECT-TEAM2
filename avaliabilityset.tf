resource "azurerm_resource_group" "tier1-AvailabilitySet" {
  name     = "example-resources"
  location = "West US"
}

resource "azurerm_availability_set" "tier1-AvailabilitySet" {
  name                = "WebAvailSet"
  location            = "azurerm_resource_group.ResourceGrps.location"
  resource_group_name = "azurerm_resource_group.ResourceGrps.name"

  tags = {
    environment = "tierone"
    displayName = "AvailabilitySet"
  }
}