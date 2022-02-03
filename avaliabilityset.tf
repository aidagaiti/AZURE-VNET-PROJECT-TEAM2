resource "azurerm_availability_set" "tier1-AvailabilitySet" {
  name                         = "WebAvailSet"
  location                     = azurerm_resource_group.project1.location
  resource_group_name          = azurerm_resource_group.project1.name

  tags {
    environment = "tierone"
    displayName = "AvailabilitySet"
  }
}