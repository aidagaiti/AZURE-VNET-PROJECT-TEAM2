resource "azurerm_availability_set" "Availabilityset" {
  name                         = "Availabilityset"
  location                     = azurerm_resource_group.project1.location
  resource_group_name          = azurerm_resource_group.project1.name

}

