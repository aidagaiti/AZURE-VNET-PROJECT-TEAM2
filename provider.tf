provider "azurerm" {
    features {}
}

resource "azurerm_resource_group" "project1" {
  name     = "project1-resources"
  location = "West US"
}
